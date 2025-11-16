
variable "instance_type" {
  type        = string #A
  description = "The type of instance to launch." #B
  default     = "t3.micro" #C
}

variable "subnet_id" {
  type        = string #D
  description = "The ID of the Subnet to launch the instance into."

  validation { #E
    condition     = length(regexall("^subnet-[\\d|\\w]+$", var.subnet_id)) == 1 #F
    error_message = "The subnet_id must match the pattern ^subnet-[\\d|\\w]+$" #G
  }
}

#A We limit the possible values to the string type.
#B A description helps users know what our input does.
#C Providing a default value makes this input optional.
#D We also want a string here.
#E This validation block lets us ensure the subnet id is the right format.
#F Here we use functions to run a regular expression check. Functions are covered in the next chapter.
#G This message is displayed if the validation check fails.