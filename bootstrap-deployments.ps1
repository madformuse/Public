#Requires -runasadministrator

Write-Host "Hi! Welcome to the Deployments Bootstap script!"

if (! (Get-Module -Name "AWSPowerShell.NetCore" -ListAvailable)) {
    Write-Host "First let's make sure the AWSPowerShell.NetCore module is installed. This will give me access to the tools I'll need to retrieve the rest of the files from S3."
    Install-Module -Name "AWSPowerShell.NetCore" -Force -ErrorAction Stop
}
else {
    Write-Host "Ah, I see you're already cultured and have these tools installed."
}