# For running terraform from differnet aws account use the below as provider
# devops role should be available in the source account
#provider "aws" {
#  region = var.region
#  assume_role {
#    role_arn = "arn:aws:iam::${var.account_id}:role/devops"
#  }
#}

# OR

# For running terraform from local use the below as provider
provider "aws" {
  region = var.region
}