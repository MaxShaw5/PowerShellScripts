$CurrentUser = [Environment]::UserName
$ComputerName = Read-Host "Please enter SN of PC"
Copy-Item -Path "\\$ComputerName\c$\ProgramData\Bradford Networks" -Destination "C:\Users\$CurrentUser\Documents\$ComputerName FortiClient Logs" -Recurse -Verbose
pause