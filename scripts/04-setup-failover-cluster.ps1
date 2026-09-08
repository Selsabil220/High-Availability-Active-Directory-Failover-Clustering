# Install Failover Clustering feature on both DC1 and DC2
Install-WindowsFeature -Name Failover-Clustering -IncludeManagementTools

# Create the failover cluster
New-Cluster -Name ProjectCluster1 -Node DC1, DC2 -StaticAddress 192.168.1.100

# Create SMB share for File Share Witness on host
New-SmbShare -Name ClusterWitness -Path C:\ClusterWitness -FullAccess Everyone

# Configure quorum witness
Set-ClusterQuorum -FileShareWitness \\192.168.1.1\ClusterWitness
