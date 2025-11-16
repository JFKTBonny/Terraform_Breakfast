data "aws_vpc" "default" { #A
  default = true
}

data "aws_subnets" "default" {
  filter { #B
    name   = "vpc-id"
    values = [data.aws_vpc.default.id] #C
  }
}

data "aws_ami" "ubuntu" {
  owners      = ["099720109477"] #D
  most_recent = true

  filter { #E
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

#A Data Sources are read only lookups.
#B This data block uses filter subblocks to restrict which subnets get returned.
#C The id attribute is computed from the aws_vpc data lookup.
#D This is the AWS Account for Cannonical, the makers of Ubuntu.
#E Blocks can have subblocks.