/*
  Values in this file are basic terraform setting values. 
*/

terraform {
  cloud {
    organization = "JunYoung-Choi"

    workspaces {
      name = "terraform-learning"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-035233c9da2fabf52"
  instance_type = "t2.micro"

  tags = {
    Name = var.testserver
  }
}