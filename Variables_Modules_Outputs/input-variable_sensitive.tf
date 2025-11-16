variable "logging_api_key" {
  description = "The API Key for our logging service."
  type        = string
  sensitive   = true #A
}

#A This prevents Terraform from printing or logging the API Key.