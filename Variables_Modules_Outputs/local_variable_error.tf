
locals {
  alpha   = 1 #A
  bravo   = "two"
  charlie = false
}

locals {
  alpha = 2 #B
}

#A Even though this is in the top block it will still conflict with the other alpha.
#B Since there are two alpha values an error will be thrown.