# Azure-VM-Automation

Azure-VM-Automation/
│
├── Create-VM.ps1
├── Delete-VM.ps1

🧠 Scripts Overview
🚀 1️⃣ Create-VM.ps1

This script automatically creates:

Resource Group

Virtual Network (VNet)

Subnet

Network Security Group (NSG)

Public IP

Azure Virtual Machine

📌 What It Does

Creates all required Azure resources

Opens port 3389 (RDP) for Windows VM

Deploys VM in specified region

Fully automated environment setup

▶️ How to Run
.\Create-VM.ps1
🗑 2️⃣ Delete-VM.ps1

This script deletes the entire Resource Group.

Since all resources are inside the Resource Group, everything will be removed in one command.

📌 What It Does

Deletes Resource Group

Deletes VM

Deletes VNet, NSG, Public IP

Prevents unnecessary Azure charges 💰

▶️ How to Run
.\Delete-VM.ps1
🔐 Required Azure Login

Before running scripts:

Connect-AzAccount
⚙️ Technologies Used

☁️ Microsoft Azure

💻 PowerShell 7

Azure PowerShell Module (Az)

🎯 Learning Outcome

This project demonstrates:

Infrastructure Automation

Azure Resource Management

PowerShell scripting

Cloud cost management

AZ-104 practical skills
