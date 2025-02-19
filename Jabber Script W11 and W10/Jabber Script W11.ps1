Get-Process -Name *Jabber* | Stop-Process
Start-Sleep -Seconds 3
$CurrentUser = Get-Content -Path C:\Data\username.txt
Remove-Item -Path "C:\Users\$CurrentUser\appdata\Local\Cisco\Unified Communications", "C:\Users\$CurrentUser\AppData\Roaming\Cisco\Unified Communications" -Force -Recurse
ipconfig /flushdns
Write-Host $CurrentUser
$CredentialID = Get-Credential -Credential MOTIONHQ\$CurrentUser
Start-Process -FilePath 'C:\Program Files (x86)\Cisco Systems\Cisco Jabber\CiscoJabber.exe' -Credential $CredentialID
Write-Host "Process Completed"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');