# Install AD DS role on DC2
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Promote DC2 as additional Domain Controller
Install-ADDSDomainController -DomainName "project.local"
