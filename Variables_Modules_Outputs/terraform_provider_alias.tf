provider "aws" { #A
  region = "us-east-1"
}

provider "aws" {
  alias  = "west" #B
  region = "us-west-2"
}

# Default Subnet Lookup

data "aws_vpc" "default" { #C
  default = true
}

data "aws_subnets" "default" { #D
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Secondary Subnet Lookup

data "aws_vpc" "backup" {
  provider = aws.west #E
  default  = true
}

data "aws_subnets" "backup" {
  provider = aws.west #F

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.defabackupult.id]
  }
}

#A This provider block does not have an Alias, so it is the default.
#B This provider block does have an Alias, so it is only used when specified.
#C No provider is specified, so the default "us-east-1" is used.
#D No provider is specified, so the default "us-east-1" is used.
#E The AWS Provider that points to "us-west-2" is used.
#F The AWS Provider that points to "us-west-2" is used.