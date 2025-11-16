locals {
  tags = { "Author" : "Rob", "ManagedBy" : "Terraform" } #A
}

resource "aws_instance" "first_instance" {
  subnet_id     = var.subnet_id
  instance_type = "t3.micro"
  tags          = local.tags #B
}

resource "aws_instance" "second_instance" {
  subnet_id     = var.subnet_id
  instance_type = "t3.small"
  tags          = local.tags #C
}

#A Here we use a local variable to define a reusable object to reference below.
#B Here we use the local tags variable we created above.
#C We also use it here.