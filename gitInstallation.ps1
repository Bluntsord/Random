$gitExe = "git.exe"
$gitUrl = "https://github.com/git-for-windows/git/releases/download/v2.30.2.windows.1/Git-2.30.2-64-bit.exe"

# Download Git installer
Invoke-WebRequest -Uri $gitUrl -OutFile $gitExe

# Start the installer
Start-Process $gitExe -ArgumentList '/VERYSILENT /NORESTART /NOCANCEL /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS' -Wait

# Clean up
Remove-Item $gitExe
