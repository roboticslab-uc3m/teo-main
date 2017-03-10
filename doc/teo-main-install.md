## teo-main: Installation from Source Code

First install the dependencies:
- [Install CMake](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_cmake.md)
- [Install YARP](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_yarp.md)
- [Install OpenRAVE](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_openrave.md)

Additionally, this project depends on YCM to download and build external packages. Although this process is intended to run automatically during the CMake configuration phase, you may still want to install YCM and said packages by yourself. In that respect, refer to [Install YCM](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_ycm.md) and to the installation guides of any package listed below:
- [teo-openrave-models](https://github.com/roboticslab-uc3m/teo-openrave-models)
- [vision](https://github.com/roboticslab-uc3m/vision)

### Install the Simulation and Basic Control Software

Our software integrates the previous dependencies. Note that you will be prompted for your password upon using '''sudo''' a couple of times:

```bash
cd  # go home
mkdir -p repos; cd repos  # make $HOME/repos if it does not exist; then, enter it
git clone https://github.com/roboticslab-uc3m/teo-main.git  # download teo-main software from the repository
cd teo-main; mkdir build; cd build
cmake ..
make -j3; sudo make install; cd  # go home
```

For CMake find_package(TEO_MAIN REQUIRED), you may also be interested in adding the following to your bashrc or profile:
```bash
export TEO_MAIN_DIR=/path/to/teo-main/build
```

For additional TEO_MAIN options use ccmake instead of cmake.

### Even more!

Done! You are now probably interested in one of the following links:

Optional dependencies:
- [Install KDL](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_kdl.md)
- [Install CWiiD](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_cwiid.md)
- [Install GLib](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_glib.md)
- [Install OpenCV](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_opencv.md)
- [Install Travis](https://github.com/roboticslab-uc3m/installation-guides/blob/develop/install_travis.md)