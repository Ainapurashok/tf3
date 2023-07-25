terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.8.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA35WTEFKQGDUBUZNG"
  secret_key = "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"
}

# Setup webserver ec2 instance
 
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "My_VPC_1"
  }
}
   
