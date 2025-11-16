variable "strings_only" {
  type    = string #A
  default = "This has to be a string."
}

variable "numbers_only" {
  type    = number
  default = 3.14
}

variable "booleans_only" {
  type    = bool
  default = true
}

variable "list_of_strings" {
  type    = list(string) #B
  default = ["list", "of", "strings"]
}

#A The type argument is used to restrict the kinds of values accepted.
#B Some types are more complex and allow for subtypes.