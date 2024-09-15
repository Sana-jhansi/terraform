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

resource "aws_ec2_instance_state" "example"{
    ami = var.ami
    instance_type = var.instance_type
    state = "stopped"
   
    
    tags = {
      Name = var.Name
    }
}