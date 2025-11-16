variable "description" {
  type        = string
  default     = null #A
  description = "A description field to apply to resources."
}

variable "flag" {
  type        = bool
  default     = null #B
  description = "A flag that can be disabled, enabled, or unset."
}

locals {
  flag = var.flag != null ? tostring(var.flag) : "default" #C
}

#A This makes the field optional without setting an explicit value.
#B The default isn't true or false even though this is a boolean.
#C Use the string version of the boolean or the string "default".