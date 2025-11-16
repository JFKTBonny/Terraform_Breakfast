data "aws_vpc" "default" {
  default = true #A
}

data "aws_subnets" "default" {
  filter { #B
    name   = "vpc-id" #C
    values = [data.aws_vpc.default.id] #D
  }
}

#A AWS creates a default VPC in each region, and we want our data source to use that.
#B The AWS Provider uses the filter field, but other providers will have a different parameters.
#C We want to filter the subnets by the VPC ID.
#D Now we can get all of the subnets for the default VPC.