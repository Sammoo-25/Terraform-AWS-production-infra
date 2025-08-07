terraform {
  backend "s3" {
    bucket         = "terraform-state-samvel"  
    key            = "3-tier/prod/terraform.tfstate"
    region         = "us-east-1"           
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
