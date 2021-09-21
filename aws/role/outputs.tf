output "role_name" {
  value = aws_iam_role.role.name
}
output "policy_name" {
  value = aws_iam_policy.policy.name
}
output "instance_profile_name" {
  value = aws_iam_instance_profile.instance_profile.name
}
output "role_arn" {
  value = aws_iam_role.role.arn
}
output "instance_profile_arn" {
  value = aws_iam_instance_profile.instance_profile.arn
}
output "policy_arn" {
  value = aws_iam_policy.policy.arn
}