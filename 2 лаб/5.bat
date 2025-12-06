@ECHO OFF

IF %1 LEQ 0 GOTO Exit
IF %1 GEQ 21 GOTO Exit

SET /A n=%1
SET /A f=1

:BegLoop
IF %n% GTR 1 (
    SET /A f=f*n
    SET /A n=n-1
    GOTO BegLoop
)

ECHO %1! = %f%
GOTO End

:Exit
ECHO WRONG
GOTO End

:End