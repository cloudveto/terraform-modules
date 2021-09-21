#key pattern account/environment/application/terraform.tfstate
# For running terraform from remote account enable the below code
terraform {
  backend "s3" {
    bucket         = "s3-terraform-state"
    dynamodb_table = "s3-terraform-state-lock"
    key            = "vpc/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}