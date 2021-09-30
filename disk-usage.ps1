
$device_id = $args[0]
if ($device_id -eq $null){
    Write-Output "No DeviceID provided."
}
# use argument to filter WMI query
Get-WmiObject -Class Win32_LogicalDisk -Filter "DeviceID = '$device_id'" | ForEach-Object {
  # output the free space calculation, nothing else
  [Math]::Round((($_.Size - $_.FreeSpace)/$_.Size) * 100, 2)
}