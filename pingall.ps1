# Single column of just IP address should be .txt file
$input = "C:\Users\M9266100\Downloads\shortlist.csv"  


$ServerName = Get-Content $input

foreach ($Server in $ServerName) {

    if (test-Connection -ComputerName $Server -Count 2 -Quiet ) { 

        $result = write-Host "$Server has recieved the ping! " -ForegroundColor Green

                } else

                { Write-Warning "$Server is not recieving the ping, please check the     connection!" 

                }   

}$result; Write-Host "$result.count machines queried"
pause   