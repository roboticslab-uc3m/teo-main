## teo-main: Installation from Source Code

First install the dependencies:
- [Install CMake 3.5+](https://github.com/roboticslab-uc3m/installation-guides/blob/master/install-cmake.md)

Additionally, this project depends on YCM to download and build external packages. Although this process is intended to run automatically during the CMake configuration phase, you may still want to install YCM and said packages by yourself. In that respect, refer to [Install YCM](https://github.com/roboticslab-uc3m/installation-guides/blob/master/install-ycm.md) and to the installation guides of any package listed below:

- [teo-developer-manual](https://github.com/roboticslab-uc3m/teo-developer-manual)
- [teo-configuration-files](https://github.com/roboticslab-uc3m/teo-configuration-files)
- [teo-openrave-models](https://github.com/roboticslab-uc3m/teo-openrave-models)
- [developer-manual](https://github.com/roboticslab-uc3m/developer-manual)
- [project-generator](https://github.com/roboticslab-uc3m/project-generator)
- [installation-guides](https://github.com/roboticslab-uc3m/installation-guides)
- [openrave-yarp-plugins](https://github.com/roboticslab-uc3m/openrave-yarp-plugins)
- [kinematics-dynamics](https://github.com/roboticslab-uc3m/kinematics-dynamics)
- [vision](https://github.com/roboticslab-uc3m/vision)
- [speech](https://github.com/roboticslab-uc3m/speech)
- [tools](https://github.com/roboticslab-uc3m/tools)

### Install the Simulation and Basic Control Software

Our software integrates the previous dependencies. Note that you will be prompted for your password upon using `sudo` a couple of times:

```bash
cd  # go home
mkdir -p repos; cd repos  # make $HOME/repos if it does not exist; then, enter it
git clone https://github.com/roboticslab-uc3m/teo-main.git  # download teo-main software from the repository
cd teo-main; mkdir build; cd build
cmake ..
make -j$(nproc)  # compile
sudo make install  # install
cd  # go home
```

For additional `teo-main` options use `ccmake` instead of `cmake`.

### Even more!

Done! You are now probably interested in one of the following links:

- [teo-developer-manual](https://github.com/roboticslab-uc3m/teo-developer-manual)
