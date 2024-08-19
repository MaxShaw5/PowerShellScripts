#Initialize a variable that reads the current user running the PS script so that the logs can be saved to their PC
 
$CurrentUser = [Environment]::UserName

#Initialize a variable that reads the hostname of the PC from user input with a Read-Host command

$ComputerName = Read-Host "Please enter SN of PC"

#Since the PC is a part of your domain and wider network, you can simply C$ into the remote folders and use the Copy-Item cmdlet to copy the logs to your destination file/folder.

Copy-Item -Path "\\$ComputerName\c$\PathToLogs" -Destination "C:\Users\$CurrentUser\Documents\$ComputerName Name of Logs You Are Collecting" -Recurse -Verbose

#Keep the window open after the command has been run so the results of the -Verbose argument can be read to ensure no errors

pause
