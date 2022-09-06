REM run as Administrator
@echo off
cd /d %~dp0

@REM set DOWNLOAD_DIR=%USERPROFILE%\Downloads
@REM set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
@REM SET PATH=^
@REM %DOWNLOAD_DIR%\PortableGit\bin;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\bin;^
@REM %DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;^

set PATH=^
D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;^
D:\Softwares\strawberry-perl-5.32.1.1-64bit-portable\perl\site\bin;^
D:\Softwares\strawberry-perl-5.32.1.1-64bit-portable\perl\bin;^
D:\Softwares\strawberry-perl-5.32.1.1-64bit-portable\c\bin;

cmake.exe -G"MinGW Makefiles" ^
-DCMAKE_BUILD_TYPE=Release ^
-DBUILD_SHARED_LIBS=OFF ^
-DCMAKE_INSTALL_PREFIX="build/hdf5-installation" -B./build &&^
cd build
cmake --build . && cmake --install .
pause
REM GOTO rebuild_and_startapp