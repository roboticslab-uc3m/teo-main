include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)

ycm_ep_helper(TEO_CONFIGURATION_FILES TYPE GIT
              STYLE GITHUB
              REPOSITORY roboticslab-uc3m/teo-configuration-files.git
              TAG master
              DEPENDS YARP)
