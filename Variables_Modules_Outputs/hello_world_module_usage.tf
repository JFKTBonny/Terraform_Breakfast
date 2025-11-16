
variable "subnet_id" { #A
  type        = string
  description = "The Subnet to launch this resource in."
}

module "my_instance" {
  source        = "github.com/YOU_USERNAME/terraform-aws-in-depth//modules/ec2_instance" #B
  subnet_id     = var.subnet_id #C
  instance_type = "t3.large" #D
}

output "instance_arn" {
  value = module.my_instance.aws_instance_arn
}

#A We previously used the data object to look this up, but it's also common to use variables for things like network settings.
#B Point this at your git repository, and make sure you keep the folder to point at the ec2_instance module. The double slash is used to reference a submodule inside of the repository.
#C We left this as a variable this time so you can set it to any subnet in you the aws region.
#D The instance type is configurable now.