# Create test user for failover validation
New-ADUser -Name 'TestUser1' -AccountPassword (ConvertTo-SecureString 'Password123!' -AsPlainText -Force) -Enabled $true

# Verify AD availability
Get-ADUser -Filter *
