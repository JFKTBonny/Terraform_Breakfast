resource "aws_instance" "hello_world" { #A
  ami           = data.aws_ami.ubuntu.id
  subnet_id     = data.aws_subnets.default.ids[0]
  instance_type = "t3.micro" #B
}

#A Resource blocks map to specific infrastructure.
#B This is typically set as a variable, not hard coded.

