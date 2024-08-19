#Initialize a variable that uses your organizations naming scheme to list all label/regular printers that start with whatever input the user passes to the script
 
$BranchName = Read-Host "Enter Branch Name"

#Fetch a list of all label printers that start with the input passed in the Read-Host cmdlet above

Get-Printer -ComputerName \\NameOfPrintServer -Name $BranchName*


#Label/regular printers will be listed with their name and driver name so this can make for a quick way to check what drivers each printer is using.
#Write Host to let user know that the above output is a list of all label printers at the location or that meet the naming conventions defined above.


Write-Host "Above is a list of label printers at that location"
Pause
