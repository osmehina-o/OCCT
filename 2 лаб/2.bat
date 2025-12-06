@ECHO OFF
:BegLoop
SET /P Num=Enter number: 
IF %Num% ==- GOTO ExitLoop
IF NOT DEFINED MIN SET MIN=%Num%
IF NOT DEFINED MAX SET MAX=%Num%
IF %Num% LEQ %MIN% SET MIN=%Num%
IF %Num% GEQ %MAX% SET MAX=%Num%
GOTO BegLoop
:ExitLoop
Echo Min = %MIN%
Echo Max = %MAX%