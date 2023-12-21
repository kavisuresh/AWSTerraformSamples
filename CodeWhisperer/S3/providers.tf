# create terraform module with required providers as aws with version 5.29.0
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.29.0"
    }
  }
}

# configure the aws provider with the region us-east-1 with link to credentials file
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                 = "default"
}
