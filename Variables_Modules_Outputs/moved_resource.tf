
moved {
  from = module.bad_unclear_name #A
  to   = module.better_name #B
}

module "better_name" {
  source = "value"
  

}

#A The from argument should be the old resource or module location.
#B The to argument should point to the new resource location.