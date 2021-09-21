resource "aws_elasticache_replication_group" "redis" {
  replication_group_description     =   var.replication_group_description
  replication_group_id              =   var.replication_group_id
  engine                            =   var.engine
  engine_version                    =   var.engine_version
  node_type                         =   var.node_type
  port                              =   var.port
  subnet_group_name                 =   var.subnet_group_name
  security_group_ids                =   var.security_group_ids
  parameter_group_name              =   var.parameter_group_name
  at_rest_encryption_enabled        =   var.at_rest_encryption_enabled
  transit_encryption_enabled        =   var.transit_encryption_enabled
  maintenance_window                =   var.maintenance_window
  auto_minor_version_upgrade        =   var.auto_minor_version_upgrade
  apply_immediately                 =   var.apply_immediately

  automatic_failover_enabled        =   var.automatic_failover_enabled

  cluster_mode {
    num_node_groups                 =   var.num_node_groups
    replicas_per_node_group         =   var.replicas_per_node_group
  }

}
