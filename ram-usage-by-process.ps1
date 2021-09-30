$PROCESS_NAME = $args[0]

if ($PROCESS_NAME -eq $null){
    Write-Output "No process provided"
}
else {
    (Get-Process | Where-Object {$_.ProcessName -Match "^$PROCESS_NAME"}).WorkingSet64/1MB
}

#if you want to see names of all the processes running, run the following code below
#Get-Process | Sort-Object WorkingSet64 | Select-Object Name,@{Name='WorkingSet';Expression={($_.WorkingSet64/1KB)}}