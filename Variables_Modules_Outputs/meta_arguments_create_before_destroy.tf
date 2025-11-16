resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.ubuntu.id
  subnet_id     = data.aws_subnets.default.ids[0]
  instance_type = var.instance_type

  lifecycle {
    create_before_destroy = true #A
  }
}

variable "instance_type" {}

#A If a replacement is needed it will be created before the old instance is removed.