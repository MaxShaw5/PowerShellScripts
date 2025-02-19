$BrokenPrinters = Get-Printer -ComputerName \\milabprint | Where-Object { $_.PrinterStatus -eq 'error'} | Select-Object -ExpandProperty Name
$BrokenPrinters | Out-file -FilePath C:\Data\Max\PrinterOutput.txt
Set-Printer -ComputerName \\milabprint -Name $BrokenPrinters -DriverName "ZDesigner GK420d"
Pause