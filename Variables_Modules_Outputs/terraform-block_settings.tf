terraform {
  experiments = [example] #A

  required_providers { #B
    aws = {
      version = "~> 5.0.0"
      source  = "hashicorp/aws"
    }
  }

  cloud { #C
    organization = "example_corp"
    hostname     = "app.terraform.io"

    workspaces {
      tags = ["my-app"]
    }
  }

  backend "s3" { #D
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

#A Enable optional experiments for the module.
#B Requires Providers for the module. Discussed further in 2.4.2
#C Terraform Cloud configuration.
#D Backend configuration. Note that only one of backend or cloud should be used.