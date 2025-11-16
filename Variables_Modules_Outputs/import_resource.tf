import {
  to = aws_instance.main #A
  id = "i-1234567890abcdef0" #B
}

resource "aws_instance" "main" {
  # Required Arguments
}

#A The to argument should point to a resource block.
#B In v1.5 the ID had to be hardcoded, but v1.6 allows variables and attributes.