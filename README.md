Azure VM Automation (PowerShell)

Enterprise-grade automation for provisioning and decommissioning Azure Virtual Machine infrastructure using Azure PowerShell (Az Module).

📌 Overview

This repository contains PowerShell scripts designed to automate the deployment and removal of a complete Azure Virtual Machine environment.

The project demonstrates Infrastructure as Code (IaC) principles using Azure Resource Manager through PowerShell and aligns with practical skills required for Microsoft AZ-104 certification and real-world cloud operations.

🏗 Architecture

The Create script provisions the following resource hierarchy:

Resource Group
│
├── Virtual Network
│   └── Subnet
│
├── Network Security Group (NSG)
│   └── Inbound Rule: TCP 3389 (RDP)
│
├── Public IP Address
│
├── Network Interface (NIC)
│
└── Windows Virtual Machine

All resources are logically grouped within a single Resource Group to ensure simplified lifecycle management.

📁 Repository Structure
Azure-VM-Automation/
│
├── Create-VM.ps1      # Infrastructure provisioning script
├── Delete-VM.ps1      # Infrastructure teardown script
└── README.md
🚀 Features
Automated Provisioning

Creates Resource Group

Deploys Virtual Network and Subnet

Configures Network Security Group

Opens RDP Port (3389)

Creates Public IP and NIC

Deploys Windows Virtual Machine

Automated Cleanup

Deletes entire Resource Group

Removes all associated resources

Prevents ongoing Azure billing

Operational Benefits

Repeatable deployments

Reduced human error

Faster environment setup

Clean resource lifecycle control

🔐 Prerequisites

Azure Subscription

PowerShell 7+

Azure PowerShell Module (Az)

Install Az Module if not already installed:

Install-Module Az -Scope CurrentUser -Repository PSGallery -Force
🔑 Authentication

Authenticate before running any script:

Connect-AzAccount

If working with multiple subscriptions:

Get-AzSubscription
Set-AzContext -SubscriptionId "<subscription-id>"
▶️ Usage
Provision Infrastructure
.\Create-VM.ps1

This script will deploy all required Azure resources in the configured region.

Decommission Infrastructure
.\Delete-VM.ps1

This removes the entire Resource Group and all associated resources.

💰 Cost Management

Azure resources incur charges while running.

Best Practice:

Always delete lab environments after use

Use Resource Group-level deletion for clean teardown

🧠 Technical Concepts Demonstrated

Infrastructure as Code (IaC)

Azure Resource Manager (ARM)

Azure Networking Fundamentals

VM Deployment Automation

Resource Group Lifecycle Management

Cost Optimization Strategies

AZ-104 Practical Implementation

🔄 Future Enhancements

Potential enterprise-grade improvements:

Parameterized deployment

Secure credential handling

Support for Linux VM

Managed Disk customization

Bicep / ARM template conversion

Terraform implementation

CI/CD pipeline integration

Tag-based governance policy

Logging & monitoring integration

🛡 Security Considerations

Avoid hardcoding credentials

Use Azure Key Vault for secrets

Restrict NSG rules in production

Implement RBAC least-privilege access

Enable Azure Monitor diagnostics

📚 Ideal For

AZ-104 Certification Preparation

Cloud Engineers

DevOps Engineers

System Administrators

IT Students building cloud portfolios

👨‍💻 Author

Dhairya Panchal
Cloud & DevOps Enthusiast
