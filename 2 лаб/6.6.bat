@ECHO OFF

REM #1

IF EXIST "%~1.*" (
    NOTEPAD "%~1.*t"
) ELSE (
    ECHO No file
)

REM #2

SETLOCAL ENABLEDELAYEDEXPANSION

SET "directory=%~1"
SET "fnameFile=FNames.txt"
SET "absentFiles="

IF EXIST "%directory%\%fnameFile%" (
    FOR /f "usebackq delims=" %%i IN ("%directory%\%fnameFile%") DO (
        IF NOT EXIST "%directory%\%%i" (
            SET "absentFiles=!absentFiles! %%i"
        )
    )
    IF DEFINED absentFiles (
        ECHO The following files are missing:%absentFiles%
    ) ELSE (
        ECHO All files are present.
    )
) ELSE (
    ECHO %fnameFile% not found. Creating it...
    DIR /b "%directory%" > "%directory%\%fnameFile%"
    ECHO File list saved to %directory%\%fnameFile%.
}

ENDLOCAL