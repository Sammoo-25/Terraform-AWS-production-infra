---

### 🔐 Terraform Remote State

This configuration is ready for remote state storage and locking using:

- **S3 Bucket**: `terraform-state-samvel` (stores `.tfstate` file)
- **DynamoDB Table**: `terraform-locks` (ensures only one apply runs at a time)

To use this in production:

1. Create an S3 bucket with versioning enabled
2. Create a DynamoDB table with `LockID` as the partition key
3. Configure AWS credentials locally (`aws configure`)
4. Run `terraform init` to initialize the backend
