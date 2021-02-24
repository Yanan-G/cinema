provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket  = "udemy-cinema-tf-state"
    key     = "udemy-cinema.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManageBy    = "Terraform"
    Owner       = "Yanan Geng"
  }
}

