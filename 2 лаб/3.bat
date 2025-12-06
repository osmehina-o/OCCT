@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET /A podcatalogi=0

FOR /D /R "%~1" %%d IN (.) DO (
    SET /A podcatalogi+=1
)

ECHO podcatalogi: !podcatalogi!

ENDLOCAL