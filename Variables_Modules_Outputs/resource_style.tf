resource "resource_type" "unique_resource_name" {
  provider = aws.dns #A

  string_parameter  = "value" #B
  integer_parameter = 134
  boolean_parameter = true

  object_arguments = { #Anno Arguments can be separated by empty lines.
    key1 : "value" #C
    key2 = "value" #D
    key3 = "value"
  }

  subblock { #E
    subargument  = "value"
    subargument2 = "another_value"
  }

  lifecycle { #F
    ignore_changes = [object_arguments]
  }
}

#A Meta Arguments go at the top.
#B Arguments come next, and all equal signs should be aligned.
#C Both colons and equal signs are valid.
#D The equal sign is considered best practice though.
#E Resource or Data specific subblocks come next.
#F Meta Argument Subblocks are always at the end.