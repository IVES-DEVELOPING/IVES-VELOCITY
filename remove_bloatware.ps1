# Run PowerShell as Admin before running this script
Write-Host "Removing bloatware apps..." -ForegroundColor Green

$apps = @(
    "Microsoft.3DBuilder",
    "Microsoft.XboxApp",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "Microsoft.SkypeApp",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.GetHelp",
    "Microsoft.MicrosoftOfficeHub"
)

foreach ($app in $apps) {
    Get-AppxPackage -Name $app | Remove-AppxPackage
}

Write-Host "Bloatware removal complete!" -ForegroundColor Cyan
pause
