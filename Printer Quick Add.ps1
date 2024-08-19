#Initialize a variable that will read input from the user 

$printername = Read-Host "Enter printer name"

#Use the cmdlet to add a printer and pass in the name of the printer as gathered from the Read-Host cmdlet above. "NameOfPrintServer" will of course be swapped to whatever print server you are looking to add the printer from.

add-printer -connectionname \\NameOfPrintServer\$printername

#Inform the user that the printer has been added and prompt them to enter any key to close the window

Write-Host "Complete!"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
