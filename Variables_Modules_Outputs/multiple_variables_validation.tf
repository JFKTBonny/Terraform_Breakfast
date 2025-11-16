variable "my_integer" {
  description = "An integer between 0 and 10 inclusive."
  type        = number

  validation { #A
    condition     = var.my_integer <= 10
    error_message = "The value must not be greater than 10."
  }

  validation { #B
    condition     = var.my_integer >= 0
    error_message = "The value must not be less than 0."
  }

  validation { #C
    condition     = can(parseint(tostring(var.my_integer), 10))
    error_message = "The value must be an integer."
  }
}

#A Our first rule displays an error if the value is too high.
#B Our second rule displays an error if the value is too low.
#C Our last rule displays an error if the number is not an integer.