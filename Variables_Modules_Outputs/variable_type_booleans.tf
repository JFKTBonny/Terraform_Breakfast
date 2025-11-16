variable "enable_flag" {
  type    = bool #A
  default = true #B
}

variable "enable_flag_disabled" {
  type    = bool
  default = false #C
}

#A Booleans can be either "true" or "false".
#B If no value is passed this variable will be true.
#C If no value is passed this variable will be false.