🚀 End-to-End DevSecOps: Automating Secure Terraform Deployments with GitHub Actions
📘 Overview

This project demonstrates a fully automated and secure Terraform-based CI/CD pipeline using GitHub Actions to deploy infrastructure on Microsoft Azure.
It highlights DevSecOps best practices such as infrastructure as code (IaC), automated validation, environment segregation, and secure secret management.

🏗️ Architecture Overview
flowchart TD
A[GitHub Commit] --> B[GitHub Actions CI/CD Pipeline]
B --> C[Terraform Init, Validate, Plan]
C --> D[Terraform Apply via GitHub Runner]
D --> E[Azure Infrastructure Provisioned]
E --> F[Azure Resource Group, VNet, Subnet]

⚙️ Tech Stack
Category	Tools / Services
Cloud	Azure
IaC	Terraform (v1.5+)
CI/CD	GitHub Actions
Security	GitHub Secrets, Azure RBAC
Scripting	Bash, YAML
Version Control	GitHub
🧩 Project Structure
terraform-azure-cicd-pipeline/
│
├── .github/
│   └── workflows/
│       └── terraform-ci.yml       # GitHub Actions workflow
│
├── environments/
│   ├── dev/
│   │   └── terraform.tfvars       # Dev environment variables
│   └── prod/
│       └── terraform.tfvars       # Prod environment variables
│
├── modules/
│   └── network/
│       ├── main.tf                # Core network resources
│       ├── variables.tf
│       └── outputs.tf
│
├── main.tf                        # Root Terraform config
├── providers.tf                   # AzureRM provider setup
├── variables.tf                   # Global variables
├── outputs.tf                     # Global outputs
└── README.md                      # Project documentation

🔐 GitHub Secrets Configuration

Before running the pipeline, add the following secrets in
GitHub → Repo → Settings → Secrets and variables → Actions

Secret Name	Description
AZURE_CLIENT_ID	Azure Service Principal client ID
AZURE_CLIENT_SECRET	Azure Service Principal secret
AZURE_TENANT_ID	Azure AD tenant ID
AZURE_SUBSCRIPTION_ID	Azure subscription ID
🧠 Pipeline Workflow

The pipeline automates Terraform lifecycle in three key stages:

🧾 1. Terraform Init & Validation

Validates configuration syntax and initializes providers.

🧮 2. Terraform Plan

Generates an execution plan to show resource changes before deployment.

🚀 3. Terraform Apply

Applies approved changes to Azure automatically upon merge to the main branch.

📦 Usage
# Clone the repository
git clone https://github.com/pradeep85841/terraform-azure-cicd-pipeline.git
cd terraform-azure-cicd-pipeline

# Initialize Terraform
terraform init

# Validate
terraform validate

# Plan with dev environment
terraform plan -var-file="environments/dev/terraform.tfvars"

# Apply configuration
terraform apply -var-file="environments/dev/terraform.tfvars"

🧰 Key Features

✅ Infrastructure as Code (IaC) with modular Terraform design
✅ GitHub Actions workflow for CI/CD automation
✅ Environment-based deployment management
✅ Secure secret storage with GitHub Secrets
✅ Azure Service Principal authentication
✅ Reusable Terraform modules

🛡️ DevSecOps Practices Implemented

Enforced Terraform validation on each commit

GitHub Secrets for secure credential handling

Role-based access via Azure RBAC

Modular IaC promoting compliance and reuse

Automated plan and apply with approval steps

📊 Sample Output
Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

subnet_id = "/subscriptions/.../subnets/subnet-dev"
vnet_id   = "/subscriptions/.../virtualNetworks/vnet-dev"

🧑‍💻 Author

Pradeep Kunchala
Automation & DevOps Engineer
🔗 LinkedIn
 | Medium
 | GitHub

📝 Related Article:
End-to-End DevSecOps: Automating Secure Terraform Deployments with GitHub Actions
