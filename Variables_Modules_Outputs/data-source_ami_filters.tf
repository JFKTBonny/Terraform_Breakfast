data "aws_ami" "ubuntu" {
  most_recent = true

  filter { #A
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter { #B
    name   = "virtualization-type"
    values = ["hvm"]
  }

  # AWS Account for Canonical, makers of Ubuntu.
  owners = ["099720109477"]
}

#A Since this is a block, not an argument, it can be repeated.
#B Note that the filter block is unique to this resource type.