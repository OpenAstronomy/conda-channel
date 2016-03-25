mkdir build
cd build

REM Configure step
set CMAKE_CUSTOM=
REM cmake -G "%CMAKE_GENERATOR%" -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% %CMAKE_CUSTOM% %SRC_DIR%
cmake -G "Visual Studio 9 2008 Win64" -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% %CMAKE_CUSTOM% %SRC_DIR%
REM cmake -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% %CMAKE_CUSTOM% %SRC_DIR%
if errorlevel 1 exit 1

REM Build step
REM "C:\Program Files (x86)"\"Microsoft Visual Studio 9.0\VC\vcpackages"\vcbuild.exe OPENJPEG.sln /Build "%RELEASE_TARGET%"
"C:\Program Files (x86)"\"Microsoft Visual Studio 9.0\VC\vcpackages"\vcbuild.exe OPENJPEG.sln /Build 
if errorlevel 1 exit 1

REM Install step
"C:\Program Files (x86)"\"Microsoft Visual Studio 9.0\VC\vcpackages"\vcbuild.exe INSTALL.vcproj
REM vcbuild.exe OPENJPEG.sln /Build /Project INSTALL
if errorlevel 1 exit 1
