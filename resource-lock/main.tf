
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }

backend "s3"{
    bucket = aws_s3_bucket.jhansi.id 
    key    = "mytf/terraform.tfstate"
    region = "us-east-1" 

       
    # For State Locking
    dynamodb_table = "project-tf"    
  } 
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example"{
    ami = var.ami
    instance_type = var.instance_type

    tags = {
      Name = var.Name
    }
}
resource "aws_s3_bucket" "jhansi" {
    bucket = "jhansi1918919"

    tags = {
        Name        = "My first bucket"
        Environment = "Stage"
    }

}