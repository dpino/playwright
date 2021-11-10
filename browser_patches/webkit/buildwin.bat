set PERL5LIB=%CD%\Tools\Scripts
set DEVENV=devenv.exe
set WEBKIT_BUILD_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE;C:\Program Files\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin;C:\Program Files\Git\cmd;C:\Windows;C:\Windows\System32;C:\Windows\System32\OpenSSH;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0;C:\Windows\system32;C:\cmd;C:\Program Files (x86)\GnuWin32\bin;C:\Program Files\CMake\bin;C:\Ruby27-x64\bin;C:\Strawberry\c\bin;C:\Strawberry\perl\bin;C:\Strawberry\perl\site\bin;C:\Users\86185\AppData\Local\Microsoft\WindowsApps;C:\Users\86185\AppData\Local\ActiveState\bin;C:\Users\86185\AppData\Roaming\ActiveState\bin
set PATH=%WEBKIT_BUILD_PATH%
set WEBKIT_LIBRARIES=%CD%\WebKitLibraries\win
set WEBKIT_OUTPUTDIR=%CD%\WebKitBuild

perl %CD%\Tools\Scripts\build-webkit --wincairo --release --no-ninja --touch-events --orientation-events --dark-mode-css --generate-project-only

%DEVENV% %CD%\WebKitBuild\Release\WebKit.sln /build "Release|x64"
