#Initialize a variable the defines where the list of hostnames will be pulled from

$input = "PathToCSV"
$ServerName = Get-Content $input

#Initialize a variable that starts the pingcount at a value of 0

$pingCount = 0

#Perform the connection test (or "ping") and if the hostname returns or doesn't return your requests for a connection test, inform the user running the script that the connection was either successful or not. If it is succesful it will add 1 to the successful ping count.

foreach ($Server in $ServerName) {
    if (Test-Connection -ComputerName $Server -Count 2 -Quiet) {
        Write-Host "$Server has received the ping!" -ForegroundColor Green
        $pingCount++
    } else {
        Write-Warning "$Server is not receiving the ping, please check the connection!"
    }
}

#Use the Write-Host command to inform the user how many machines received a ping.

Write-Host "$pingCount machines received the ping."
pause
