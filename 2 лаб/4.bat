@ECHO OFF
FOR %%f IN ("%~1\*.*") DO (
    IF EXIST "%~2\%%~NXf" ECHO %%~NXf
)