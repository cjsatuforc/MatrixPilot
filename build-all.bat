@echo off
mkdir build >nul 2>&1
pushd build

mkdir SILSIM >nul 2>&1
pushd SILSIM
make -f ../../makefile SOURCE_DIR=../.. DEVICE=SILSIM
popd

mkdir PX4 >nul 2>&1
pushd PX4
make -f ../../makefile SOURCE_DIR=../.. DEVICE=PX4
popd

mkdir AUAV3 >nul 2>&1
pushd AUAV3
@rem make -f ../../makefile SOURCE_DIR=../.. DEVICE=AUAV3 TOOLCHAIN=C30
popd
mkdir UDB4 >nul 2>&1
pushd UDB4
@rem make -f ../../makefile SOURCE_DIR=../.. DEVICE=UDB4 TOOLCHAIN=C30
popd
mkdir UDB5 >nul 2>&1
pushd UDB5
@rem make -f ../../makefile SOURCE_DIR=../.. DEVICE=UDB5 TOOLCHAIN=C30
popd

mkdir AUAV3-XC16 >nul 2>&1
pushd AUAV3-XC16
@rem make -f ../../makefile SOURCE_DIR=../.. DEVICE=AUAV3 TOOLCHAIN=XC16
popd
mkdir UDB4-XC16 >nul 2>&1
pushd UDB4-XC16
@rem make -f ../../makefile SOURCE_DIR=../.. DEVICE=UDB4 TOOLCHAIN=XC16
popd
mkdir UDB5-XC16 >nul 2>&1
pushd UDB5-XC16
@rem make -f ../../makefile SOURCE_DIR=../.. DEVICE=UDB5 TOOLCHAIN=XC16
popd

popd
pause
