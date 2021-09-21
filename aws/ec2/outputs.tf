output "ec2_private_ip" {
  value = aws_instance.ec2[*].private_ip
}
output "ec2_public_ip" {
  value = aws_instance.ec2[*].associate_public_ip_address
}
output "iam_instance_profile" {
  value = aws_instance.ec2[*].iam_instance_profile
}