variable "my_object" {
  type = object({
    name    = string, #A
    enabled = bool #B

  })

  default = { #C
    name    = "default"
    enabled = false
  }
}

#A Objects contain one or more keys, each with their own type.
#B The keys in an object do not have to be the same type.
#C Object values are declared with brackets.