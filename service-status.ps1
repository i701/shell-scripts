$ServiceName = $args[0] 
$arrService = Get-Service -Name $ServiceName 

if ($ServiceName -eq $null){ 
    Write-Output "No service provided" 
} 
else {
    if ($arrService -eq $null){ 
        Write-Output "Not a service."
    } 
    elseif ($arrService.Status -eq 'Running'){ 
        Write-Output "Running" 
    } 
    Else{ 
        Write-Output "Stopped" 
    }
}

# to get a list of all the services run Get-Service
