resource "aws_instance" "hello_world" {
    ami = var.aws_ami
    subnet_id = var.subnet_id
    instance_type = var.instance_type 
}

# data "aws_vpc" "default" {
#   default = true
  
# }

# data "aws_subnets" "default" {
#   filter { #B
#     name   = "vpc-id" #C
#     values = [data.aws_vpc.default.id] #D
#   }
  
# }

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter { #A
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter { #B
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   # AWS Account for Canonical, makers of Ubuntu.
#   owners = ["099720109477"]
# }