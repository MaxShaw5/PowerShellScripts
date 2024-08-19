#Kill all instances of the Jabber app in the fore and background
 
Stop-process -Name 'CiscoJabber'

#Wait for a few seconds for all instances to close

Start-Sleep -Seconds 3

#Initialize a variable so that the Remove-Item cmdlet knows what user profile to look in for the folder(s) you will be deleting 

$CurrentUser = [Environment]::UserName

#Remove the two folders that typically cause issues in the Jabber application. This will essentially give you a "hard reset" on your Jabber app.

Remove-Item -Path "C:\Users\$CurrentUser\appdata\Local\Cisco\Unified Communications", "C:\Users\$CurrentUser\AppData\Roaming\Cisco\Unified Communications" -Force -Recurse

#Flush DNS

ipconfig /flushdns

#Restart the Jabber application. This is done so the script can be done multiple times in succession without any user intervention because it sometimes takes a few tries.

Start-Process -FilePath 'C:\Program Files (x86)\Cisco Systems\Cisco Jabber\CiscoJabber.exe'

#Write-Host to let user know that all tasks are complete and the user can sign in to Jabber to see if their extension and green icon has returned.

Write-Host "Process Completed"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
