# create terraform module with required_providers as aws with version 5.29.0
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.29.0"
    }
  }
}
# create provider with shared_credentials_files and region as us-east-1
provider "aws" {
  shared_credentials_files = ["~/.aws/credentials"]
  region                   = "us-east-1"
}
