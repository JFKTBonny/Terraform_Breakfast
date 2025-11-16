variable "nested_object" {
  type = object({
    key = object({ #A
      subkey = object({ #B
        nested_string = string #C
        nested_tuple  = tuple([string, string, string]) #D
      })
    })
  })

  default = {
    key = {
      subkey = {
        nested_string = "hello world",
        nested_tuple  = ["one", "two", "three"]
      }
    }
  }
}

#A Keys can reference other objects.
#B Which can also reference other objects.
#C This allows for arbitrarily complex data structures.
#D Including mixing in other complex types.