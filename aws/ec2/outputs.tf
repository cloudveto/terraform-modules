output "ec2_private_ip" {
  value = aws_instance.ec2[*].private_ip
}
output "ec2_public_ip" {
  value = aws_instance.ec2[*].associate_public_ip_address
}
output "iam_instance_profile" {
  value = aws_instance.ec2[*].iam_instance_profile
}
output "id" {
  value = aws_instance.ec2[*].id
}
output "root_block_device" {
  value = aws_instance.ec2[*].root_block_device
}
output "ebs_block_device" {
  value = aws_instance.ec2[*].ebs_block_device
}
output "subnet_id" {
  value = aws_instance.ec2[*].subnet_id
}