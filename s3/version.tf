terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.82.2"
    }
  }
}

provider "aws" {
  access_key = ""
  secret_key = ""
}
