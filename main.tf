terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

# todo make the name of the module dynamic
module "us-east-1" {
  source = "./modules/multi-region"
  name   = "multi-region"
  providers = {
    aws = "aws"
  }
}

module "us-east-2" {
  source = "./modules/multi-region"
  name   = "multi-region"
  providers = {
    aws = "aws.us-east-2"
  }
}