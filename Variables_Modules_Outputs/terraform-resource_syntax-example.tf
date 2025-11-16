resource "resource_type" "unique_resource_name" {
  string_argument  = "value" #A
  integer_argument = 134
  boolean_argument = true
  object_argument = { #B
    "key" = "value"
  }

  lifecyle { #C
    create_before_destroy = true #D
  }
}

#A Each argument will have a type and a value.
#B Objects can be defined inline.
#C Resources can also have sub blocks, including the lifecycle block that exists on all resources.
#D This meta argument is present on every resource.