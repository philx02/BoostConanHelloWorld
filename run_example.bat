@ECHO ON

set BASEDIR=%~dp0
PUSHD %BASEDIR%

RMDIR /Q /S build
mkdir build
cd build
conan install .. --build=missing
cmake .. -G "Visual Studio 16 2019" -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake
cmake --build . --config Release
cd %BASEDIR%