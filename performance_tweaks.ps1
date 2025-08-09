# Performance tweaks script
Write-Host "Applying performance settings..." -ForegroundColor Green

# Set performance mode
powercfg /setactive SCHEME_MIN

# Disable visual effects
Set-ItemProperty "HKCU:\Control Panel\Desktop" "DragFullWindows" 0
Set-ItemProperty "HKCU:\Control Panel\Desktop" "MenuShowDelay" 0
Set-ItemProperty "HKCU:\Control Panel\Desktop" "UserPreferencesMask" ([byte[]](0x90,0x12,0x03,0x80,0x10,0x00,0x00,0x00))

Write-Host "Performance tweaks applied! Restart for full effect." -ForegroundColor Cyan
pause
