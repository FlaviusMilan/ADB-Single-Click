echo off
COLOR 3F
mode 150,40
echo. PRESS "CTRL + C" AND TYPE "N" TO STOP RECORDING
@echo on
adb shell screenrecord --bit-rate 20000000 --verbose /sdcard/%VideoFileName%.mp4

adb pull /sdcard/%VideoFileName%.mp4 %USERPROFILE%\Desktop 
exit