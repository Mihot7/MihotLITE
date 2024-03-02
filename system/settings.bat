@echo off
cd config
:poczatek
echo ———————————————–——–
echo Mihot Settings LITE
echo ———————————————–——–
echo.
echo 1) SYSTEM COLOR
echo 4) KONIEC
echo.
set /p opcja=wybierz:
if %opcja%==1 goto opcja1
if %opcja%==4 goto e
goto zly_wybor

:opcja1
Echo Wybierz kolor! (Użyj systemu kolorów cmd, np. 0a. Aby uzyskać więcej informacji wprowadz "?".)
set /p color=KOLOR:
del color
copy clean color
echo %color%>"color"
color %color%
echo Motyw zastosowany!
pause
goto poczatek

:zly_wybor
echo OPCJA NIE ZNANA.. WYBIERZ PONOWNIE!
pause
goto poczatek

:e
cd ..
set error=0
exit /b