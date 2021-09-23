@echo off
COLOR 3F
mode 150,40
echo. PRESS "CTRL + C" AND TYPE "N" TO STOP RECORDING
@echo on
adb shell /system/bin/screencap -p /sdcard/%ScreenshotFileName%.png

adb pull /sdcard/%ScreenshotFileName%.png %USERPROFILE%\Desktop
exit