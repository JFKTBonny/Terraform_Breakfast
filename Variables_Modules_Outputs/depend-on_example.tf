resource "aws_internet_gateway" "main" { #A
  vpc_id = aws_vpc.main.id
}

resource "aws_nat_gateway" "example" {
  subnet_id = aws_subnet.example.id

 #B

  depends_on = [ #C
    aws_internet_gateway.main #D
  ]
}

#A This resource doesn't export anything needed by the Nat Gateway.
#B There are no arguments that take in attributes from `resource.aws_internet_gateway.main`. However, the NAT Gateway will not work until the Internet Gateway is up.
#C depends_on takes the block reference itself an argument, not an attribute.
#D Only resource blocks can be depended on so the `resource` part of the block reference is dropped.