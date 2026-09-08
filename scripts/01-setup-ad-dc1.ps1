# Install AD DS and DNS roles on DC1
Install-WindowsFeature -Name AD-Domain-Services, DNS -IncludeManagementTools

# Promote DC1 as Domain Controller - Create new forest
Install-ADDSForest -DomainName "project.local"
