#Set the current date and time to a variable
$currentTime = Get-Date -Format "yyyyMMddHHmmss"

#Keeping threshold for high CPU utilization i.e.80%
$cpuThreshold = 80

#Get a list of running processes
$processes = Get-Process

#Grep process with high CPU utilization
$highCpuProcesses = $processes | Where-Object { $_.CPU -gt $cpuThreshold }

#Path for log file
$logFilePath = "D:\Terraform\Python\assesment_$currentTime.log"

#Append to log file
$highCpuProcesses | Format-Table | Out-File -Append -FilePath $logFilePath

#Displaying the filtered list
$highCpuProcesses | Format-Table

#Output to log file path
Write-Host "High CPU utilization processes saved to: $logFilePath"