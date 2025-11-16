terraform { #A
  required_providers { #B
    aws = { #C
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" { #D
  region = "us-east-1" #E
}

#A Terraform Settings Block defines workspace settings.
#B This subblock tells Terraform which providers to install.
#C This project uses the AWS Provider.
#D Provider blocks are used to configure providers.
#E This is typically set as a variable, not hard coded.