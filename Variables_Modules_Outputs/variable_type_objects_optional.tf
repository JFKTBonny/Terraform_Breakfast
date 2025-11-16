variable "optional_keys" {
  type = object({
    alpha   = string,
    bravo   = optional(string)
    charlie = optional(string, "default_string")
  })

  default = {
    alpha = "example" #A
  }
}

locals {
  delta   = var.optional_keys.alpha #B
  echo    = var.optional_keys.bravo #C
  foxtrot = var.optional_keys.charlie #D
}

#A Only alpha is defined as the other two are optional.
#B Delta will be "example" or a user provided value.
#C echo will be null or a user provided value.
#D foxtrot will be "default_string" or a user provided value.