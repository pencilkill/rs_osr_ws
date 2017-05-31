@echo off
set "JAVA8_I586=%~d0\Program Files\Java\jre"
set "JAVA8_I586_EXE=%JAVA8_I586%\bin\java.exe"
if exist "%JAVA8_I586_EXE%" (
    echo An old version java has been installed already ...
    echo.
    "%JAVA8_I586_EXE%" -version
    echo.
    rd /s /q "%JAVA8_I586%"
    echo An old version java has been removed ...
)
if not exist "%JAVA8_I586_EXE%" (
    echo.
    mklink /j "%JAVA8_I586%" "%~dp0"
    echo.
)
"%JAVA8_I586_EXE%" -version
pause
exit