# This script reports the maximum RAM capacity of the system's motherboard.

# Get the maximum memory capacity from WMI (in bytes)
$maxCapacityBytes = (Get-WmiObject -Class Win32_PhysicalMemoryArray).MaxCapacity

# Convert the maximum capacity to GB and round to 2 decimal places
$maxCapacityGB = [math]::Round($maxCapacityBytes / 1GB, 2)

# Create the output string
$outputString = "Your motherboard supports a maximum capacity of ${maxCapacityGB} GB of RAM"

# Print the output
Write-Output $outputString