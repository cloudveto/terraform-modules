output "redis_id" {
    value   =   aws_elasticache_replication_group.redis.id
}
output "redis_configuration_endpoint_address" {
    value   =   aws_elasticache_replication_group.redis.configuration_endpoint_address
}
