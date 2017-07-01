# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cdd/geant4/geant4.10.00.p01/examples/extended/electromagnetic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cdd/geant4/geant4.10.00.p01/examples/extended/electromagnetic/PileRoomSim

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: install/strip
.PHONY : install/strip/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/cdd/geant4/geant4.10.00.p01/examples/extended/electromagnetic/PileRoomSim/CMakeFiles /home/cdd/geant4/geant4.10.00.p01/examples/extended/electromagnetic/PileRoomSim/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/cdd/geant4/geant4.10.00.p01/examples/extended/electromagnetic/PileRoomSim/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named DirectAccess

# Build rule for target.
DirectAccess: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 DirectAccess
.PHONY : DirectAccess

# fast build rule for target.
DirectAccess/fast:
	$(MAKE) -f TestEm0/CMakeFiles/DirectAccess.dir/build.make TestEm0/CMakeFiles/DirectAccess.dir/build
.PHONY : DirectAccess/fast

#=============================================================================
# Target rules for targets named TestEm0

# Build rule for target.
TestEm0: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm0
.PHONY : TestEm0

# fast build rule for target.
TestEm0/fast:
	$(MAKE) -f TestEm0/CMakeFiles/TestEm0.dir/build.make TestEm0/CMakeFiles/TestEm0.dir/build
.PHONY : TestEm0/fast

#=============================================================================
# Target rules for targets named TestEm1

# Build rule for target.
TestEm1: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm1
.PHONY : TestEm1

# fast build rule for target.
TestEm1/fast:
	$(MAKE) -f TestEm1/CMakeFiles/TestEm1.dir/build.make TestEm1/CMakeFiles/TestEm1.dir/build
.PHONY : TestEm1/fast

#=============================================================================
# Target rules for targets named TestEm2

# Build rule for target.
TestEm2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm2
.PHONY : TestEm2

# fast build rule for target.
TestEm2/fast:
	$(MAKE) -f TestEm2/CMakeFiles/TestEm2.dir/build.make TestEm2/CMakeFiles/TestEm2.dir/build
.PHONY : TestEm2/fast

#=============================================================================
# Target rules for targets named TestEm3

# Build rule for target.
TestEm3: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm3
.PHONY : TestEm3

# fast build rule for target.
TestEm3/fast:
	$(MAKE) -f TestEm3/CMakeFiles/TestEm3.dir/build.make TestEm3/CMakeFiles/TestEm3.dir/build
.PHONY : TestEm3/fast

#=============================================================================
# Target rules for targets named PileRoomSim

# Build rule for target.
PileRoomSim: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 PileRoomSim
.PHONY : PileRoomSim

# fast build rule for target.
PileRoomSim/fast:
	$(MAKE) -f PileRoomSim/CMakeFiles/PileRoomSim.dir/build.make PileRoomSim/CMakeFiles/PileRoomSim.dir/build
.PHONY : PileRoomSim/fast

#=============================================================================
# Target rules for targets named TestEm5

# Build rule for target.
TestEm5: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm5
.PHONY : TestEm5

# fast build rule for target.
TestEm5/fast:
	$(MAKE) -f TestEm5/CMakeFiles/TestEm5.dir/build.make TestEm5/CMakeFiles/TestEm5.dir/build
.PHONY : TestEm5/fast

#=============================================================================
# Target rules for targets named TestEm6

# Build rule for target.
TestEm6: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm6
.PHONY : TestEm6

# fast build rule for target.
TestEm6/fast:
	$(MAKE) -f TestEm6/CMakeFiles/TestEm6.dir/build.make TestEm6/CMakeFiles/TestEm6.dir/build
.PHONY : TestEm6/fast

#=============================================================================
# Target rules for targets named TestEm7

# Build rule for target.
TestEm7: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm7
.PHONY : TestEm7

# fast build rule for target.
TestEm7/fast:
	$(MAKE) -f TestEm7/CMakeFiles/TestEm7.dir/build.make TestEm7/CMakeFiles/TestEm7.dir/build
.PHONY : TestEm7/fast

#=============================================================================
# Target rules for targets named TestEm8

# Build rule for target.
TestEm8: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm8
.PHONY : TestEm8

# fast build rule for target.
TestEm8/fast:
	$(MAKE) -f TestEm8/CMakeFiles/TestEm8.dir/build.make TestEm8/CMakeFiles/TestEm8.dir/build
.PHONY : TestEm8/fast

#=============================================================================
# Target rules for targets named TestEm9

# Build rule for target.
TestEm9: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm9
.PHONY : TestEm9

# fast build rule for target.
TestEm9/fast:
	$(MAKE) -f TestEm9/CMakeFiles/TestEm9.dir/build.make TestEm9/CMakeFiles/TestEm9.dir/build
.PHONY : TestEm9/fast

#=============================================================================
# Target rules for targets named TestEm10

# Build rule for target.
TestEm10: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm10
.PHONY : TestEm10

# fast build rule for target.
TestEm10/fast:
	$(MAKE) -f TestEm10/CMakeFiles/TestEm10.dir/build.make TestEm10/CMakeFiles/TestEm10.dir/build
.PHONY : TestEm10/fast

#=============================================================================
# Target rules for targets named TestEm11

# Build rule for target.
TestEm11: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm11
.PHONY : TestEm11

# fast build rule for target.
TestEm11/fast:
	$(MAKE) -f TestEm11/CMakeFiles/TestEm11.dir/build.make TestEm11/CMakeFiles/TestEm11.dir/build
.PHONY : TestEm11/fast

#=============================================================================
# Target rules for targets named TestEm12

# Build rule for target.
TestEm12: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm12
.PHONY : TestEm12

# fast build rule for target.
TestEm12/fast:
	$(MAKE) -f TestEm12/CMakeFiles/TestEm12.dir/build.make TestEm12/CMakeFiles/TestEm12.dir/build
.PHONY : TestEm12/fast

#=============================================================================
# Target rules for targets named TestEm13

# Build rule for target.
TestEm13: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm13
.PHONY : TestEm13

# fast build rule for target.
TestEm13/fast:
	$(MAKE) -f TestEm13/CMakeFiles/TestEm13.dir/build.make TestEm13/CMakeFiles/TestEm13.dir/build
.PHONY : TestEm13/fast

#=============================================================================
# Target rules for targets named TestEm14

# Build rule for target.
TestEm14: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm14
.PHONY : TestEm14

# fast build rule for target.
TestEm14/fast:
	$(MAKE) -f TestEm14/CMakeFiles/TestEm14.dir/build.make TestEm14/CMakeFiles/TestEm14.dir/build
.PHONY : TestEm14/fast

#=============================================================================
# Target rules for targets named TestEm15

# Build rule for target.
TestEm15: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm15
.PHONY : TestEm15

# fast build rule for target.
TestEm15/fast:
	$(MAKE) -f TestEm15/CMakeFiles/TestEm15.dir/build.make TestEm15/CMakeFiles/TestEm15.dir/build
.PHONY : TestEm15/fast

#=============================================================================
# Target rules for targets named TestEm16

# Build rule for target.
TestEm16: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm16
.PHONY : TestEm16

# fast build rule for target.
TestEm16/fast:
	$(MAKE) -f TestEm16/CMakeFiles/TestEm16.dir/build.make TestEm16/CMakeFiles/TestEm16.dir/build
.PHONY : TestEm16/fast

#=============================================================================
# Target rules for targets named TestEm17

# Build rule for target.
TestEm17: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm17
.PHONY : TestEm17

# fast build rule for target.
TestEm17/fast:
	$(MAKE) -f TestEm17/CMakeFiles/TestEm17.dir/build.make TestEm17/CMakeFiles/TestEm17.dir/build
.PHONY : TestEm17/fast

#=============================================================================
# Target rules for targets named TestEm18

# Build rule for target.
TestEm18: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestEm18
.PHONY : TestEm18

# fast build rule for target.
TestEm18/fast:
	$(MAKE) -f TestEm18/CMakeFiles/TestEm18.dir/build.make TestEm18/CMakeFiles/TestEm18.dir/build
.PHONY : TestEm18/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... DirectAccess"
	@echo "... TestEm0"
	@echo "... TestEm1"
	@echo "... TestEm2"
	@echo "... TestEm3"
	@echo "... PileRoomSim"
	@echo "... TestEm5"
	@echo "... TestEm6"
	@echo "... TestEm7"
	@echo "... TestEm8"
	@echo "... TestEm9"
	@echo "... TestEm10"
	@echo "... TestEm11"
	@echo "... TestEm12"
	@echo "... TestEm13"
	@echo "... TestEm14"
	@echo "... TestEm15"
	@echo "... TestEm16"
	@echo "... TestEm17"
	@echo "... TestEm18"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

