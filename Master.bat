@echo off 
color 0A
echo.
goto menu

:menu
cls
echo.
COLOR 3F
mode 150,40
echo.
echo.
echo.   **********************WHAT YOU WANT TO CAPTURE**************************
echo.
echo 1 Only Log
echo 2 Only Video
echo 3 Both Log and Video
echo 4 Screenshot 
echo 5 Exit

echo.
echo Enter your choice:
set /p choice=
 if  '%choice%' == '1' goto Log 
 if  '%choice%' == '2' goto Video   
 IF  '%choice%' == '3' goto Combined
 IF  '%choice%' == '4' goto Screenshot
 IF  '%choice%' == '5' goto Exit
 if  '%choice%' GTR '5' goto ER

 
:Log
echo Enter the LogFileName:
set /p LogFileName=
start "" "%USERPROFILE%\Desktop\BatFiles\Logfile.bat" 
pause
goto menu

:Video
echo Enter the VideoFileName:
set /p VideoFileName=
start "" "%USERPROFILE%\Desktop\BatFiles\Videofile.bat"
pause
goto menu

:Combined
echo Enter the LogFileName:
set /p LogFileName=
echo Enter the VideoFileName:
set /p VideoFileName=
start "" "%USERPROFILE%\Desktop\BatFiles\Logfile.bat" 
start "" "%USERPROFILE%\Desktop\BatFiles\Videofile.bat" 
pause
goto menu

:Screenshot
echo Enter the ScreenshotFileName:
set /p ScreenshotFileName=
start "" "%USERPROFILE%\Desktop\BatFiles\Screenshotfile.bat"
pause
goto menu

:Exit
cls
exit

:ER
echo Wrong Selection
pause
goto menu