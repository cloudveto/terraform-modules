output "s3_name" {
  value = aws_s3_bucket.s3_bucket.bucket
}
output "s3_arn" {
  value = aws_s3_bucket.s3_bucket.arn
}
