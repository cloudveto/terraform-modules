output "vpc_id" {
  value = data.aws_vpc.vpc.id
}
output "vpc_id_cidr" {
  value = data.aws_vpc.vpc.cidr_block
}
output "subnet_pri_az1_id" {
  value = data.aws_subnet.pri_subnet_1.id
}
output "subnet_pri_az2_id" {
  value = data.aws_subnet.pri_subnet_2.id
}
output "subnet_pub_az1_id" {
  value = data.aws_subnet.pub_subnet_1.id
}
output "subnet_pub_az2_id" {
  value = data.aws_subnet.pub_subnet_2.id
}

output "subnet_data_az1_id" {
  value = data.aws_subnet.data_subnet_1.id
}
output "subnet_data_az2_id" {
  value = data.aws_subnet.data_subnet_2.id
}
output "subnet_pri_ids" {
  value = data.aws_subnet_ids.pri.ids
}
output "subnet_pub_ids" {
  value = data.aws_subnet_ids.pub.ids
}
output "subnet_data_ids" {
  value = data.aws_subnet_ids.data.ids
}