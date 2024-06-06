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

Steps to Deploy

    Initialize Terraform: Run terraform init to initialize the Terraform configuration.
    Plan the Deployment: Run terraform plan to review the resources that will be created.
    Apply the Configuration: Run terraform apply to create the infrastructure.

This setup will create VPCs, subnets, security groups, and EC2 instances in both us-east-1 and us-east-2 regions using Terraform modules.
