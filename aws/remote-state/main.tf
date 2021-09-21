data "terraform_remote_state" "tf_rs" {
 backend = "s3"
  config = {
    bucket      =   "${var.name}"
    key         =   "${var.key}"
    region      =   "${var.region}"
  }
}
