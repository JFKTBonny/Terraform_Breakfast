variable "prefix" {
  type        = string
  description = "A prefix to be added to the identifiers used in the modules."
}

locals {
  identifier = "${var.prefix}-service" #A
}

#A The prefix variable is used to create a new local that can be reused in the module.