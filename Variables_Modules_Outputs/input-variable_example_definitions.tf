
variable "ami" {
  type        = string #A
  description = "The Amazon Machine Image to use when launching the EC2 Instance."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the Subnet to launch the instance into."
}

variable "instance_type" {
  type        = string
  description = "The type of instance to launch." #B
  default     = "t3.micro" #C
}

#A Variables can be restricted to specific data types, such as strings.
#B Inputs can have descriptions, and it's a good practice to always add them.
#C Inputs can have default values so users don't have to explicitly define all of them.