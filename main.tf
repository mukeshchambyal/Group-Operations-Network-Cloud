terraform {
  cloud {
    organization = "Group-Operations-Network-Cloud"
    workspaces {
      name = "Group-Operations-Network-Cloud"
    }
  }
  required_providers {
    aws = {
      version = "= 5.80.0"
      source  = "hashicorp/aws"
    }  
  }   
}
# 1. VPC Definition
resource "aws_vpc" "vpn" {
  cidr_block = "100.78.33.0/24"
  tags = {
    Name = "Group-Cloud-VPC"
  }
}