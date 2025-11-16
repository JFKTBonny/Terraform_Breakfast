variable "map_of_strings" {
  type        = map(string) #A
  description = "This value takes in a map where all values are strings."
}

variable "map_of_objects" {
  type = map(object({ #B
    string_key = string,
    number_key = number
  }))
}

#A This map will only allow strings.
#B Maps can refer to complex objects, but each element will need to match this.