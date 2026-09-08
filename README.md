# High Availability Active Directory Infrastructure Using Failover Clustering

## Project Overview
Design and implementation of a highly available Active Directory infrastructure 
using Hyper-V Failover Clustering on Windows Server 2022. The goal was to ensure 
uninterrupted access to Active Directory Domain Services (AD DS) even in the 
event of a server failure.


## Technologies Used
- Windows Server 2022
- Hyper-V (Virtualization)
- Active Directory Domain Services (AD DS)
- Failover Clustering
- DNS Server
- Ubuntu Desktop (Linux client integration)
- PowerShell

## What Was Implemented
- Deployed 2 Domain Controllers (DC1 & DC2) with AD replication
- Configured Hyper-V Failover Cluster with File Share Witness quorum
- Tested real failure scenarios (node shutdown + service crash)
- Integrated Ubuntu Linux client into Windows Active Directory domain
- Verified cross-platform authentication using AD as identity provider

## Test Results
| Test | Failure Type | AD Available | Result |
|---|---|---|---|
| Test 1 | Node Shutdown | ✅ YES | ✅ PASS |
| Test 2 | Service Crash | ✅ YES | ✅ PASS |

- Failure detection time: 15-30 seconds
- Recovery time: 5-8 minutes
- AD replication failures: 0

## 📄 Full Report
[Click here to view the full project report (53 pages) including screenshots 
and videos](https://docs.google.com/document/d/1j9EOlOqCzlpFqiiLVsKNuVA8YClFc9GCaiP3WooW1oY/edit?usp=sharing
)

## 📁 Scripts
All PowerShell and bash commands used in this project are available in the 
[/scripts](./scripts) folder.

