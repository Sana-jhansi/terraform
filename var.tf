variable "ami" {
    type = string
    default = "ami-0e86e20dae9224db8"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "x" {}
variable "list"{
    default =[1,2,3]
}

output "x"
{
    value = var.x
}
