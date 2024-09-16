data "aws_security_group" "test" {
    name = "redhat"
}
output "result"{
    value = data.aws_security_group.test
}