
output "super_secret_password" {
  description = "The password created by this module"
  value       = resource.random_password.id #A
  sensitive   = true #B
}

#A The Random Provider can be used to generate random data like passwords.
#B Terraform will avoiding displaying this value.