# Copyright: UC3M 2017
# Author: roboticslab, jgvictores, etc
# CopyPolicy: Released under the terms of the GNU GPL v2.0.
# 

find_package(YARP REQUIRED)
list(APPEND CMAKE_MODULE_PATH ${YARP_MODULE_PATH})
include(YarpInstallationHelpers)
yarp_configure_external_installation(teo-main)

### Go through single applications

add_subdirectory(kinematics)

