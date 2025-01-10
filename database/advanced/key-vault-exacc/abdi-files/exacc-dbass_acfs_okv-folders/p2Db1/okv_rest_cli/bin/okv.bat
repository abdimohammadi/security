@echo off
set OKV_RESTCLI_DIR=%~dp0\..
rem set OKV_RESTCLI_CONFIG=%OKV_RESTCLI_DIR%\conf\okvrestcli.ini
if not defined JAVA_HOME (
  echo JAVA_HOME environment variable is not set.
  exit /b 0
)

if not defined OKV_RESTCLI_CONFIG (
  echo OKV_RESTCLI_CONFIG environment variable is not set.
  exit /b 1
)
set OKV_RESTCLI_JAR=%OKV_RESTCLI_DIR%\lib\okvrestcli.jar

rem Confirm Java version

set JAVA_EXE=%JAVA_HOME%\bin\java.exe

set REQUIRED_MAJOR_VERSION=1
set REQUIRED_MINOR_VERSION=7

rem Get the Java version number from the command
for /f "tokens=1-3" %%i in ('%JAVA_EXE% -version 2^>^&1') do (
  if "%%j"=="version" set JVER=%%k
)

rem Process the version number so it's just digits
rem Want to compare to 17000 for version 1.7.0_00
setlocal EnableDelayedExpansion
for /f "delims=._ tokens=1-4" %%a in (%JVER%) do ( 
  set MAJOR=%%a
  set MINOR=%%b 
)

if %MAJOR% LSS %REQUIRED_MAJOR_VERSION% (
  echo "Unsupported JDK/JRE version - %JVER% is installed."
  echo "Need JDK/JRE version 1.7.21 or higher."
  exit /b
)

if %MAJOR% == %REQUIRED_MAJOR_VERSION% (
  if defined MINOR (
    if %MINOR% LSS %REQUIRED_MINOR_VERSION% (
      echo "Unsupported JDK/JRE version - %JVER% is installed."
      echo "Need JDK/JRE version 1.7.21 or higher."
      exit /b
)))

%JAVA_EXE% -jar %OKV_RESTCLI_JAR% %*
