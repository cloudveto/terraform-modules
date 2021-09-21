module "s3_tf" {
  source = "github.com/cloudveto/terraform-modules/aws/s3"
  name   = var.name
}