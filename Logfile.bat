 @echo off
COLOR 3F
mode 150,40
adb logcat -c
echo. PRESS "CTRL + C" AND TYPE "N" TO STOP RECORDING
@echo on
adb  logcat> %USERPROFILE%\Desktop\%LogFileName%.txt  
exit