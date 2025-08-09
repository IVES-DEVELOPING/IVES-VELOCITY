# Network optimization script
Write-Host "Optimizing network settings..." -ForegroundColor Yellow

# Disable Nagle's algorithm
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" -Name "TcpAckFrequency" -Value 1 -PropertyType DWORD -Force

# Increase TCP Window Size
netsh int tcp set global autotuninglevel=normal

Write-Host "Network optimization complete! Please restart your PC." -ForegroundColor Green
pause
