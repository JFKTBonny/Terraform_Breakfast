variable "any_number" {
  type    = number
  default = 1 #A
}

variable "another_number" {
  type    = number
  default = 1.31 #B
}

variable "a_negative_number" {
  type    = number
  default = -1 #C
}

#A Numbers can be integers.
#B Numbers can also be floats.
#C Numbers can even be negative.