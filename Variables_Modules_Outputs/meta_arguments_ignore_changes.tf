resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.ubuntu.id
  subnet_id     = data.aws_subnets.default.ids[0]
  instance_type = var.instance_type

  lifecycle {
    ignore_changes = [ami] #A
  }
}

#A If the AMI changes this resource will not be replaced.