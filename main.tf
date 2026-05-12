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