module "my_instance" {
  source    = "github.com/YOU_USERNAME/terraform-aws-instance" #A
  subnet_id = var.subnet_id
}

resource "aws_security_group" "allow_instance_access" {
  name   = "my_instance_access"
  vpc_id = aws_vpc.main.id
}

resource "aws_vpc_security_group_ingress_rule" "allow_access" { #B
  security_group_id = aws_security_group.allow_instance_access.id
  description       = "Allow traffic on port 443 from MyInstance"
  from_port         = 443 #C
  to_port           = 443 #C
  ip_protocol       = "tcp"
  cidr_ipv4         = "${module.my_instance.aws_instance_ip}/32" #D
}

#A We're using our published module from earlier in the chapter.
#B This is a security group rule that allows our instance to access machines using this security group.
#C This is the port for HTTPS Traffic.
#D We take the output from our module and use it to make a new string.