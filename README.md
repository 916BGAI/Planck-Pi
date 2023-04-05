# Planck-Pi
## Install cross-compile toolchain
### Ubuntu
```bash
$ apt install gcc-arm-linux-gnueabi
```
### Use linaro toolchain
```bash
$ wget https://releases.linaro.org/components/toolchain/binaries/7.5-2019.12/arm-linux-gnueabi/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi.tar.xz
```
## Download SDK from GitHub
```bash
$ git clone -b linux_5.4.77 --single-branch https://github.com/916BGAI/Planck-Pi.git
$ cd Planck-Pi/
$ git submodule update --init --recursive
```
## Compile
```bash
$ cd u-boot
$ make planck_pi_defconfig
$ make menuconfig
$ make -j16
$ cd linux
$ make planck_pi_defconfig
$ make menuconfig
$ make -j16
```

