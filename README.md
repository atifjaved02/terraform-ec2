# terraform-ec2
Terraform to create ec2 instance

Directory Structure
├── main.tf 
├── modules 
│ ├── ec2_instance 
│ │ └── main.tf 
│ ├── security_group 
│ │ └── main.tf 
│ ├── subnet 
│ │ └── main.tf 
│ └── vpc 
│     └── main.tf 
└── variables.tf


<img width="234" alt="Screenshot 2024-06-06 at 7 31 40 PM" src="https://github.com/atifjaved02/terraform-ec2/assets/82868980/5a6e50b5-b8f3-40ab-aa6b-74a0b46bb4c4">


Steps to Deploy

    Initialize Terraform: Run terraform init to initialize the Terraform configuration.
    Plan the Deployment: Run terraform plan to review the resources that will be created.
    Apply the Configuration: Run terraform apply to create the infrastructure.

This setup will create VPCs, subnets, security groups, and EC2 instances in both us-east-1 and us-east-2 regions using Terraform modules.
