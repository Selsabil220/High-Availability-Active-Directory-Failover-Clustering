# Install required packages on Ubuntu
sudo apt install -y realmd sssd sssd-tools adcli samba-common-bin

# Join Ubuntu to Active Directory domain
sudo realm join -U Administrator project.local

# Test network connectivity
ping 192.168.1.10  # DC1
ping 192.168.1.20  # DC2
