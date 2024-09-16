resource "aws_instance" "test" {
    ami = "ami-0e86e20dae9224db8"
    instance_type = var.instance_type == "t2*" ? "t3.micro" : var.instance_type
    
}

variable "instance_type" {}