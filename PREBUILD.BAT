:: NOTE: Don't forget to set in  foo_smooth_transition.vcxproj.user
:: <LocalDebuggerCommand>$(SolutionDir)..\..\FB2K\foobar2000.exe</LocalDebuggerCommand>

if exist ..\FB2K\running (
    ..\FB2K\foobar2000.exe /exit
)
mkdir build
cd build

:: Semicolon separated list of component names
cmake .. -DFB2K_COMPONENTS="foo_smooth_transition"
REM cmake .. -DFB2K_COMPONENTS="foo_sample"
REM cmake .. -DFB2K_COMPONENTS="foo_smooth_transition;foo_sample"
cmake --build .
set BUILD_ERR=%ERRORLEVEL%
cd ..
if "%BUILD_ERR%"=="0" (start ..\FB2K\foobar2000.exe)

