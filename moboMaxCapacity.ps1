$maxCapacity = (Get-WmiObject -Class Win32_physicalmemoryarray).maxcapacity
[string]$maxCapacityString = [math]::Round($maxCapacity/1024/1024,2)
$maxCapacityString += " GB"
Write-Host "Your motherboard supports a maximum capacity of $maxCapacityString RAM"
