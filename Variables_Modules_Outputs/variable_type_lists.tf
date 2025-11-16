variable "list_of_anything" {
  type = list(any) #A
  default = [
    "string",
  ]
}

variable "list_of_strings" {
  type = list(string) #B
  default = [
    "us-east-1",
    "us-west-2",
  ]
}

variable "list_of_lists" {
  type = list(list(string)) #C
  default = [
    ["one", "two", "three"],
    ["red", "green", "blue"]
  ]
}

#A Lists can be flexible and allow the any keyword, but this is generally discouraged.
#B In this case only strings will be allowed in the list.
#C This variable expects a list of lists, with strings in the sublists.