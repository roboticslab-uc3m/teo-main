include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)

ycm_ep_helper(TEO_DEVELOPER_MANUAL TYPE GIT
              STYLE GITHUB
              REPOSITORY roboticslab-uc3m/teo-developer-manual.git
              TAG master
              DEPENDS YARP)
