terraform {
  cloud {
    organization = "Group-Operations-Network-Cloud"
    workspaces {
      name = "Group-Operations-Network-Cloud"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.80.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
  default_tags {
    tags = {
      "global.opco" = "Personal"
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