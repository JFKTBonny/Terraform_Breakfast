

module "ec2-instance" {
    source = "https://github.com/JFKTBonny/Terraform_Breakfast/modules/ec2_instance"
    region = "us-east-1"
    instance_type = "t2.micro"
    aws_ami = "ami-0ecb62995f68bb549"
    subnet_id = data.aws_subnets.default.ids[0]

  
}

data "aws_vpc" "default" {
  default = true
  
}

data "aws_subnets" "default" {
  filter { #B
    name   = "vpc-id" #C
    values = [data.aws_vpc.default.id] #D
  }
  
}

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

