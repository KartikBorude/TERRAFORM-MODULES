# Fetch the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
    most_recent = true
    owners      = ["amazon"]

    filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

# Launch EC2 instance
resource "aws_instance" "this" {
    ami           = data.aws_ami.amazon_linux.id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id

    tags = {
    Name = "MyEC2"
    }
}