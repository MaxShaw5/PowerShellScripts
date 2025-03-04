$ComputerName = Read-Host "Please enter SN of PC"
Invoke-Command -ComputerName $ComputerName -ScriptBlock {
    Get-WinEvent -FilterHashtable @{
    LogName="Microsoft-Windows-Network*"
    Level=4} | Format-Table
}

Invoke-Command -ComputerName $ComputerName -ScriptBlock {
    Get-WinEvent -FilterHashtable @{
    LogName="Microsoft-Windows-Network*"
    Level=3} | Format-Table
}

Invoke-Command -ComputerName $ComputerName -ScriptBlock {
    Get-WinEvent -FilterHashtable @{
    LogName="Microsoft-Windows-Network*"
    Level=2} | Format-Table
}

Invoke-Command -ComputerName $ComputerName -ScriptBlock {
    Get-WinEvent -FilterHashtable @{
    LogName="Microsoft-Windows-Network*"
    Level=1} | Format-Table
}
pause