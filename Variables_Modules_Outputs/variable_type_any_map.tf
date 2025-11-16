variable "map_of_anything" {
  type        = map(any)
  description = "This can be a map of any type as long as all elements are the same type."
}

variable "list_of_anything" {
  type        = list(any)
  description = "This can be a list of any type as long as all elements are the same type."
}
