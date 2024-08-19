$BranchName = Read-Host "Enter Branch Name"
Get-Printer -ComputerName \\milabprint -Name $BranchName*
Write-Host "Above is a list of label printers at that location"
Pause