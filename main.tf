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
 
resource "aws_instance" "webserver2" {
  ami           = "ami-072ec8f4ea4a6f2cf"
  instance_type = "t2.micro"

  tags = {
    Name = "webservernew"
  }
} 
