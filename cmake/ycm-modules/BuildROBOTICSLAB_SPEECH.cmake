include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)

ycm_ep_helper(ROBOTICSLAB_SPEECH TYPE GIT
              STYLE GITHUB
              REPOSITORY roboticslab-uc3m/speech.git
              TAG master
              DEPENDS YARP)
