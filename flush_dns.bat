@echo off
echo Flushing DNS cache...
ipconfig /flushdns
ipconfig /registerdns
echo DNS cache cleared!
pause
