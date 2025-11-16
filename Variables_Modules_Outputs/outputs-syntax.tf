
output "aws_instance_arn" {
  value = resources.aws_instance.arn #A
}

output "my_favorite_string" {
  value = "Hello World" #B
}

#A Outputs let us pass information out of our module back to the user.
#B Any expression or value can be an output.