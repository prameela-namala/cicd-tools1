terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "prami-dev"
    key    = "cicd-tools"
    region = "us-east-1"
    dynamodb_table = "infra-lock-2"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}