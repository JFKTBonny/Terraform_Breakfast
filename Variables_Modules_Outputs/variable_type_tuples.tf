variable "example_typle" {
  type    = tuple([string, string, number]) #A
  default = ["alpha", "bravo", 42]
}

#A This Tuple is required to have three elements, with the first two being strings and the third a number.