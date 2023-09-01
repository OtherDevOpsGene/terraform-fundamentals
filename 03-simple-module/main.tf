terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.15.0"
    }
  }

  required_version = ">= 1.5.6"
}

provider "aws" {
  region = "us-east-2"
}

module "www" {
  source = "./webserver"

  instance_type = "t4g.nano"

  tags = {
    Name  = var.server_name
    Owner = var.owner_email
    Class = var.class_name
  }
}

output "private_ip" {
  description = "Private IP address for the webserver instance."
  value       = module.www.webserver_private_ip
}