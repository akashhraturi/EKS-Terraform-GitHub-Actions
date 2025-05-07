terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "akash33-s3-backend"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    use_lockfile = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
