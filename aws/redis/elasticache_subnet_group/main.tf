resource "aws_elasticache_subnet_group" "redis_sg" {
  name        = var.name
  description = var.description
  subnet_ids  = var.subnet_ids
}
