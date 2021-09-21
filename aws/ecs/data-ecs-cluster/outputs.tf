output "arn" {
  value = data.aws_ecs_cluster.cluster.arn
}
output "id" {
  value = data.aws_ecs_cluster.cluster.id
}
output "status" {
  value = data.aws_ecs_cluster.cluster.status
}
output "pending_tasks_count" {
  value = data.aws_ecs_cluster.cluster.pending_tasks_count
}
output "running_tasks_count" {
  value = data.aws_ecs_cluster.cluster.running_tasks_count
}
output "registered_container_instances_count" {
  value = data.aws_ecs_cluster.cluster.registered_container_instances_count
}
output "setting" {
  value = data.aws_ecs_cluster.cluster.setting
}
output "name" {
  value = data.aws_ecs_cluster.cluster.cluster_name
}