variable "list_of_anything" { #A
  type = list(any) #B
  default = [
    "string", #C
    2.3 #C
  ]
}

#A All elements in a list have to be the same.
#B This list can have any subtype as long as all elements are the same.
#C Mixing a string and a number will cause an error.