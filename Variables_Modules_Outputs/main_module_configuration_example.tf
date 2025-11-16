
data "aws_vpc" "default" { #A
  default = true #A
} #A
 #A

data "aws_subnets" "default" { #A
  filter { #A
    name   = "vpc-id" #A
    values = [data.aws_vpc.default.id] #A
  } #A
} #A

module "test_instance" {
  source    = "../"
  # subnet_id = data.aws_subnets.default.ids[0] #B
}

output "aws_instance_arn" { #C
  value = module.test_instance.aws_instance_arn
}

#A These are the same data lookups we did before, only now we're calling it from our workspace.
#B We pass the first subnet found to the module, which then passes it our resource.
#C Root level outputs are displayed when Terraform runs.