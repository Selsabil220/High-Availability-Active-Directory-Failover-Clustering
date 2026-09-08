# Test 2: Simulate service crash on DC1
Stop-Service -Name ClusSvc -Force

# Recover DC1 cluster service
Start-Service -Name ClusSvc
