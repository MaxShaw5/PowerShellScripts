$CurrentUser = [Environment]::UserName

    $Properties = 
    "EmployeeID"

    

   foreach($line in Get-Content C:\Users\$CurrentUser\Desktop\LANIDs.txt) { 
    
    (get-aduser -Identity $line -Properties $Properties |
    select @{Name="LANID (SamAccountName)";Expression={$_.SamAccountName}},
    EmployeeID )


    
    # Write Output to TXT, CSV, Screen 
    #$Userinfo |out-Gridview -Title "User Info for $UserID" -OutputMode None
    Out-File -FilePath "Desired-Path"
    }
pause