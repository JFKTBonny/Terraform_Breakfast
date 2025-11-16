terraform {
  required_providers {
    aws = { #A
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

variable "region" { #B
  type        = string
  default     = "us-east-1"
  description = "The AWS Region to connect and run the tests in."
}

provider "aws" { #C
  region = var.region #D
}

#A Our workspace needs to set its own required providers.
#B We add a single variable to configure the provider.
#C Since this is a root level module we can use the provider blocks.
#D Our region variable gets passed to AWS.