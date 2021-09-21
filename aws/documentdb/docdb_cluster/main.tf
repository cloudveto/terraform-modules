resource "aws_docdb_cluster" "docdb" {
  cluster_identifier              = var.cluster_identifier
  master_username                 = var.master_username
  master_password                 = var.master_password
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = var.preferred_backup_window
  final_snapshot_identifier       = var.final_snapshot_identifier
  skip_final_snapshot             = var.skip_final_snapshot
  apply_immediately               = var.apply_immediately
  storage_encrypted               = var.storage_encrypted
  kms_key_id                      = var.kms_key_id
  snapshot_identifier             = var.snapshot_identifier
  vpc_security_group_ids          = var.vpc_security_group_ids
  db_subnet_group_name            = var.db_subnet_group_name
  db_cluster_parameter_group_name = var.db_cluster_parameter_group_name
  engine                          = var.engine
  engine_version                  = var.engine_version
  #enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  tags = {
    Name        = var.name
    Environment = var.environment
  }
}