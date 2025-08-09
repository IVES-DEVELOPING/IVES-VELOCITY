@echo off
echo Cleaning temporary files...
del /s /q %temp%\*
rd /s /q %temp%
md %temp%
echo Temp files deleted successfully!
pause
