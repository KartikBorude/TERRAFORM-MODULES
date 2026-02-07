resource "aws_subnet" "this" {
    vpc_id     = var.vpc_id
    cidr_block = var.subnet_cidr
    tags = {
    Name = "MySubnet"
    }
}