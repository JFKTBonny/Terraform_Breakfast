output "aws_instance_arn" { #A
  value = aws_instance.hello_world.arn
}

output "aws_instance_ip" { #B
  value = aws_instance.hello_world.private_ip
}

output "aws_instance" { #C
  value = aws_instance.hello_world
}

#A This output lets module users access and reuse the instance identifier.
#B This output exposes the IP address for the instance.
#C It is also possible to return the entire resource, not just an attribute.