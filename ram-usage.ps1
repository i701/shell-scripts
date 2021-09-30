#get the RAM usage
Get-WmiObject win32_OperatingSystem |
%{"{0}" -f [Math]::Round((($_.totalvisiblememorysize - $_.freephysicalmemory)/1MB), 2)}



