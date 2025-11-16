module "vpn" {
  source  = "tedivm/cloudinit/general" #A
  version = "~> 1.0" #B

  services = ["consul", "nomad"] #C
}

#A This tells Terraform to download the tedivm/cloudinit/general module from the public registry.
#B Modules can have version specifications, just like Providers.
#C Modules have their own arguments, in this case is a list of services to launch.