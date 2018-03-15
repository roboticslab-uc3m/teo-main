# Copyright: Universidad Carlos III de Madrid (C) 2017;
# Authors: roboticslab, jgvictores, etc
# CopyPolicy: Released under the terms of the GNU GPL v2.0.

cmake_minimum_required(VERSION 2.8.9)

project(TEO_MAIN)

# Pick up our CMake modules.
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake
                              ${CMAKE_SOURCE_DIR}/cmake/ycm-modules)

# Bootstrap YCM
# https://github.com/robotology/ycm/issues/118
set(YCM_TAG v0.2.2)
include(YCMBootstrap)

# Superbuild phase
include(FindOrBuildPackage)

# Pull remote packages if not found on system.
find_or_build_package(TEO_DEVELOPER_MANUAL)
find_or_build_package(TEO_CONFIGURATION_FILES)
find_or_build_package(TEO_OPENRAVE_MODELS)
find_or_build_package(ROBOTICSLAB_DEVELOPER_MANUAL)
find_or_build_package(ROBOTICSLAB_PROJECT_GENERATOR)
find_or_build_package(ROBOTICSLAB_INSTALLATION_GUIDES)
find_or_build_package(ROBOTICSLAB_OPENRAVE_YARP_PLUGINS)
find_or_build_package(ROBOTICSLAB_KINEMATICS_DYNAMICS)
find_or_build_package(ROBOTICSLAB_VISION)
find_or_build_package(ROBOTICSLAB_SPEECH)
find_or_build_package(ROBOTICSLAB_TOOLS)

# Prepare install/ directory (might be empty).
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/install)

# Install downloaded packages.
install(DIRECTORY ${CMAKE_BINARY_DIR}/install/
        DESTINATION ${CMAKE_INSTALL_PREFIX})

# Configure and create uninstall target.
include(AddUninstallTarget)
