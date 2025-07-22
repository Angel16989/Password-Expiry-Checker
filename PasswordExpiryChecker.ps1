# Simulated user list (no domain needed)
$users = @(
    [PSCustomObject]@{ Name = "John Doe"; Username = "jdoe"; ExpiryDate = (Get-Date).AddDays(5) },
    [PSCustomObject]@{ Name = "Jane Smith"; Username = "jsmith"; ExpiryDate = (Get-Date).AddDays(15) },
    [PSCustomObject]@{ Name = "Mike Lee"; Username = "mlee"; ExpiryDate = (Get-Date).AddDays(2) }
)

# Set threshold (e.g., 7 days)
$threshold = (Get-Date).AddDays(7)

# Filter users expiring soon
$expiringUsers = $users | Where-Object { $_.ExpiryDate -lt $threshold }

# Create output folder if not exists
New-Item -Path "C:\Reports" -ItemType Directory -Force | Out-Null

# Export to CSV
$expiringUsers | Export-Csv -Path "C:\Reports\SimulatedExpiryReport.csv" -NoTypeInformation

# Display results
$expiringUsers | Format-Table -AutoSize
