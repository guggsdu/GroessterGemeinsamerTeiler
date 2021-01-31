@echo off

:start
REM Zahleneingabe

set a= 
set b=

echo Abbrechen mit Strg-C

:nochmal
set /p a=Gib die erste Zahl ein:
if not defined a goto nochmal

:nochmal2
set /p b=Gib die zweite Zahl ein:
if not defined b goto nochmal2

echo a ist %a% und b ist %b%


REM if "%a%"=="" goto nochmal1
REM if "%b%"=="" goto nochmal2

set /a x = %a%
set /a y = %b%

REM Soderfall eine der beiden Zahlen ist 0:
if %a%==0 (echo der ggt ist: %b%)

REM Euklidischer Algorithmus:
REM solange b ≠ 0
REM wenn a > b
REM dann a = a - b
REM sonst b = b - a
REM return a

:schleife
if %b% NEQ 0 (if %a% GTR %b% (set /a a = %a%-%b%) else (set /a b = %b% - %a%))
if %b% NEQ 0 (goto schleife) else (echo Der ggt von %x% und %y% ist %a%)


goto start

