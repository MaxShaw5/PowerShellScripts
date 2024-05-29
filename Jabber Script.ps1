Stop-process -Name 'CiscoJabber'
Start-Sleep -Seconds 3
$CurrentUser = [Environment]::UserName
Remove-Item -Path "C:\Users\$CurrentUser\appdata\Local\Cisco\Unified Communications", "C:\Users\$CurrentUser\AppData\Roaming\Cisco\Unified Communications" -Force -Recurse
ipconfig /flushdns
Start-Process -FilePath 'C:\Program Files (x86)\Cisco Systems\Cisco Jabber\CiscoJabber.exe'
Write-Host "Process Completed"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');