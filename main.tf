terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "jhansi" {
    bucket = "jhansi1918919"

    tags = {
        Name        = "My first bucket"
        Environment = "Stage"
    }

}

resource "aws_instance" "example"{
    ami = var.ami
    instance_type = var.instance_type

    tags = {
      Name = var.Name
    }
}

resource "aws_ec2_instance_state" "example"{
  instance_id = aws_instance.example.id
  state       = "stopped"
}