output "id" {
  value = data.aws_ecs_container_definition.container_definition.id
}
output "image" {
  value = data.aws_ecs_container_definition.container_definition.image
}
output "image_digest" {
  value = data.aws_ecs_container_definition.container_definition.image_digest
}
output "cpu" {
  value = data.aws_ecs_container_definition.container_definition.cpu
}
output "memory" {
  value = data.aws_ecs_container_definition.container_definition.memory
}
output "memory_reservation" {
  value = data.aws_ecs_container_definition.container_definition.memory_reservation
}
output "environment" {
  value = data.aws_ecs_container_definition.container_definition.environment
}
output "disable_networking" {
  value = data.aws_ecs_container_definition.container_definition.disable_networking
}
output "docker_labels" {
  value = data.aws_ecs_container_definition.container_definition.docker_labels
}