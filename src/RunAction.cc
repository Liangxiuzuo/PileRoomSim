//
/// \file electromagnetic/PileRoomSim/src/RunAction.cc
/// \brief Implementation of the RunAction class
//
// $Id: RunAction.cc 79239 2014-02-20 16:00:06Z gcosmo $
// 

#include <sys/time.h>

#include "RunAction.hh"

#include "G4Run.hh"
#include "G4RunManager.hh"

#include "G4EmCalculator.hh"
#include "G4UnitsTable.hh"
#include <G4Electron.hh>
#include <G4Electron.hh>
#include <G4PionMinus.hh>
#include "G4SystemOfUnits.hh"
#include "Randomize.hh"
#include "EventAction.hh"

#include "xmlParser.h"
#include "formattingStrings.hh"

RunAction::RunAction(std::string miscFile)
 : G4UserRunAction()
{
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
  analysisManager->SetVerboseLevel(1);  
  analysisManager->SetFirstHistoId(1);
   

  //create ntuple
  analysisManager->CreateNtuple("PileRoomSim", "Simulation of Pile Room");
  
  //primitive branches
  analysisManager->CreateNtupleDColumn("Ekin_n_PostGraphite");
  analysisManager->CreateNtupleDColumn("Etot_n_initial");
  analysisManager->CreateNtupleDColumn("TotalEnergyDeposited");
  analysisManager->CreateNtupleIColumn("leftWall");

  analysisManager->CreateNtupleDColumn("he3TubeXPos");
  analysisManager->CreateNtupleDColumn("he3TubeYPos");
  analysisManager->CreateNtupleDColumn("he3TubeZPos");


 
  //need to link to the EventAction object to get the vectors that will be added to the ntuple
  const EventAction* constEventAction = static_cast<const EventAction*>(G4RunManager::GetRunManager()->GetUserEventAction());
  EventAction* eventAction = const_cast<EventAction*>(constEventAction);
  
  //get the names of the misc objects to name the ntuple branches
  if(miscFile.size()!=0){
    std::vector<XmlParser> miscObjects = XmlParser::getVector(miscFile, false);  
    for(int i=0; i<(int)miscObjects.size(); i++){
      analysisManager->CreateNtupleIColumn("left"+miscObjects[i].getStringValue("Name"));
    }
  }
  
  //vector branches
  analysisManager->CreateNtupleDColumn("EDEPinHe3", eventAction->getEDEPvec());
  analysisManager->CreateNtupleIColumn("PIDinHe3", eventAction->getPIDvec());
  analysisManager->CreateNtupleIColumn("neutronHits", eventAction->getNeutronHits());


 
  //no more branches added after this
  analysisManager->FinishNtuple();

}

RunAction::~RunAction()
{
   delete G4AnalysisManager::Instance();
}



void RunAction::BeginOfRunAction(const G4Run*)
{
  gettimeofday(&timeMark,NULL);
  runStart = (double)timeMark.tv_sec + (double)timeMark.tv_usec/1000000.;

  // save Rndm status
  if (isMaster) G4Random::showEngineStatus();

  
  // Get analysis manager
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();

  const EventAction* constEventAction = static_cast<const EventAction*>(G4RunManager::GetRunManager()->GetUserEventAction());
  EventAction* eventAction = const_cast<EventAction*>(constEventAction);

  eventAction->Initialize();

  // Open an output file
  analysisManager->OpenFile();    
}

void RunAction::EndOfRunAction(const G4Run* run)
{  
  // show Rndm status
  if (isMaster) G4Random::showEngineStatus();         

  const EventAction* constEventAction = static_cast<const EventAction*>(G4RunManager::GetRunManager()->GetUserEventAction());
  EventAction* eventAction = const_cast<EventAction*>(constEventAction);  

  int nevents = run->GetNumberOfEvent();
  double meanTime, stdev;
  eventAction->getTime(nevents, meanTime, stdev);

  //cout<<meanTime<<"\t"<<stdev<<endl;
  
  gettimeofday(&timeMark,NULL);
  runEnd = (double)timeMark.tv_sec + (double)timeMark.tv_usec/1000000.;
  
  //cout<<runEnd-runStart<<endl;


  G4cout<<topLeft;
  for(int i=0; i<52; i++) G4cout<<line;
  G4cout<<topRight<<G4endl;

  
  G4cout<<vertical<<"Number of events: "<<right<<setw(6)<<nevents<<", corresponding to "<<right<<setw(6)<<1000*(double)nevents/10000000<<" ms"<<vertical<<G4endl;

  G4cout<<leftDivider;
  for(int i=0; i<52; i++) G4cout<<thinLine;
  G4cout<<rightDivider<<G4endl;

  G4cout<<vertical<<right<<setw(6)<<eventAction->getnGraphite()<<" neutrons left the Graphite                   "<<vertical<<G4endl;
  G4cout<<vertical<<right<<setw(6)<<eventAction->getnNeutrons()<<" neutrons detected                            "<<vertical<<G4endl;


  G4cout<<leftDivider;
  for(int i=0; i<52; i++) G4cout<<thinLine;
  G4cout<<rightDivider<<G4endl;

  G4cout.precision(4);
  G4cout<<vertical<<" "<<right<<setw(7)<<meanTime<<plusMinus<<left<<setw(10)<<stdev<<" seconds per event               "<<vertical<<G4endl;
  G4cout<<vertical<<" Total run time: "<<left<<setw(7)<<runEnd-runStart<<" seconds                    "<<vertical<<G4endl;



  G4cout<<bottomLeft;
  for(int i=0; i<52; i++) G4cout<<line;
  G4cout<<bottomRight<<G4endl;


  //save ntuple      
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
  analysisManager->Write();
  analysisManager->CloseFile();
}




