$ComputerName = Read-Host "Please enter SN of PC"
Invoke-Command -ComputerName $ComputerName -ScriptBlock {
    Get-NetAdapter -Name * | Format-Table -View Driver
}
pause