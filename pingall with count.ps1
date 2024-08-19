$input = "C:\Users\M9266100\Downloads\Book1.csv"
$ServerName = Get-Content $input
$pingCount = 0

foreach ($Server in $ServerName) {
    if (Test-Connection -ComputerName $Server -Count 2 -Quiet) {
        Write-Host "$Server has received the ping!" -ForegroundColor Green
        $pingCount++
    } else {
        Write-Warning "$Server is not receiving the ping, please check the connection!"
    }
}

Write-Host "$pingCount machines received the ping."
pause