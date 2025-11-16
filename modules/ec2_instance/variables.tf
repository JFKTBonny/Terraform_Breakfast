
variable "instance_type" {
  type        = string                            #A
  description = "The type of instance to launch." #B
  
}

variable "subnet_id" {
  type        = string #D
  description = "The ID of the Subnet to launch the instance into."
  

  validation {                                                                  #E
    condition     = length(regexall("^subnet-[\\d|\\w]+$", var.subnet_id)) == 1 #F
    error_message = "The subnet_id must match the pattern ^subnet-[\\d|\\w]+$"  #G
  }
}

variable "region" {
  type        = string
  description = "aws region where  deploy resource"
  

}

variable "aws_ami" {
  type = string
  description = "aws ami to use"
  
}