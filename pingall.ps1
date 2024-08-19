#Initialize a variable the defines where the list of hostnames will be pulled from
$input = "PathToFile"  

#Initialize a variable that pulls info from the file defined in the variable above

$ServerName = Get-Content $input

#Perform a connection test and write to the host reporting either a successful test or a failure

foreach ($Server in $ServerName) {

    if (test-Connection -ComputerName $Server -Count 2 -Quiet ) { 

        $result = write-Host "$Server has recieved the ping! " -ForegroundColor Green

                } else

                { Write-Warning "$Server is not recieving the ping, please check the     connection!" 

                }   



}
pause   
