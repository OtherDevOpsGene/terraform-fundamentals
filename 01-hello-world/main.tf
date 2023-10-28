terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.23.1"
    }
  }

  required_version = ">= 1.6.2"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "hello_world" {
  # AMI ID from https://cloud-images.ubuntu.com/locator/ec2/
  ami           = "ami-02ee5a6c04de8002a"
  instance_type = "t4g.nano"

  tags = {
    Name  = "hello_world"
    Owner = "otherdevopsgene@portinfo.com"
  }
}
