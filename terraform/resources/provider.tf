provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {}
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}


