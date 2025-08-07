# Production-Ready AWS Infrastructure with Terraform

This project is based on [YashPimple/Terraform-AWS-Architecture](https://github.com/YashPimple/Terraform-AWS-Architecture) and extended by **Samvel Shegiyan** to reflect a real-world, production-grade AWS infrastructure deployment using Terraform.

---

## 🔧 Key Customizations

- Modularized Terraform code (VPC, EC2, RDS, ALB)
- Added remote state management (S3 + DynamoDB)
- Multi-AZ setup for high availability
- Security groups, IAM role improvements
- Ready for CI/CD integration with GitHub Actions
- Architecture diagram and documentation

---

## 🧱 Infrastructure Components

- **VPC** with public and private subnets
- **ALB** for load balancing across EC2 instances
- **EC2 Auto Scaling Group** with launch templates
- **RDS PostgreSQL** in private subnet
- **IAM roles & policies**
- **S3** for state backend
- **CloudWatch** (coming soon)

---

## 📦 Terraform Structure

```
.
├── modules/           # Reusable module definitions
├── environments/
│   └── prod/          # Main environment configs
├── docs/              # Architecture diagrams & docs
└── .github/workflows/ # CI/CD automation (Terraform plan/apply)
```

---

## 🚀 How to Use

```bash
cd environments/prod
terraform init
terraform plan
terraform apply
```

---

## 📝 Requirements

- Terraform >= 1.0
- AWS CLI configured with credentials
- Backend bucket and DynamoDB table created for remote state (coming in Step 4)

---

## 📄 License & Attribution

This project is licensed under MIT.

Original repository: [YashPimple/Terraform-AWS-Architecture](https://github.com/YashPimple/Terraform-AWS-Architecture)

Customizations and extensions by [Samvel Shegiyan](https://github.com/Sammoo-25)