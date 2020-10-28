# set up providers for each reason

# inital provider does not have alias
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# each additional provider below must have a alias
provider "aws" {
  alias   = "us-east-2"
  region  = "us-east-2"
}