:: NOTE: Don't forget to set in  foo_smooth_transition.vcxproj.user
:: <LocalDebuggerCommand>$(SolutionDir)..\..\FB2K\foobar2000.exe</LocalDebuggerCommand>

mkdir build
cd build

:: Semicolon separated list of component names
REM cmake .. -DFB2K_COMPONENTS="foo_smooth_transition"
REM cmake .. -DFB2K_COMPONENTS="foo_sample"
cmake .. -DFB2K_COMPONENTS="foo_smooth_transition;foo_sample"


cmake --build .
cd ..
..\FB2K\foobar2000.exe

