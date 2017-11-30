@echo off

rem ==========================================================================
rem Shortcuts for various tasks, emulating UNIX "make" on Windows.
rem ==========================================================================

if "%PYTHON%" == "" (
    set PYTHON=C:\Python27\python.exe
)
if "%TSCRIPT%" == "" (
    set TSCRIPT=tests.py
)

rem Needed to locate the .pypirc file and upload exes on PYPI.
set HOME=%USERPROFILE%

%PYTHON% scripts\winmake.py %1 %2 %3 %4 %5 %6