
locals {
  alpha   = 1 #A
  bravo   = "two" #A
  charlie = false #A
}

locals { #B
  delta = ["four", "five"] #B
  echo = { #B
    "foxtrot" = "six", #B
    "golf"    = "seven" #B
  }
}

locals {
  hotel = local.bravo #C
}

#A Each of these locals will be available through the whole module.
#B These locals will also be available throughout the whole module.
#C Local variables can reference other local variables.