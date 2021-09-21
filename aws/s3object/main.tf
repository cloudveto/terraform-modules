resource "aws_s3_bucket_object" "object" {
  bucket  = var.bucket
  key     = var.key
  source  = var.filename
}