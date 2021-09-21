variable "name" {
  type        = string
  description = "Name of the application"
}

variable "engine" {
  type        = string
  default     = "docdb"
  description = "The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb`"
}

variable "engine_version" {
  type        = string
  default     = ""
  description = "The version number of the database engine to use"
}

variable "kms_key_id" {
  type        = string
  description = "The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to `true`"
  default     = ""
}
/*
variable "enabled_cloudwatch_logs_exports" {
  description = "List of log types to export to cloudwatch. The following log types are supported: `audit`, `error`, `general`, `slowquery`"
}*/

variable "cluster_identifier" {
  type        = string
  description = "The cluster identifier. If omitted, Terraform will assign a random, unique identifier."
}

variable "master_username" {
  type        = string
  description = "(Required unless a snapshot_identifier is provided) Username for the master DB user"
}

variable "master_password" {
  type        = string
  default     = ""
  description = "(Required unless a snapshot_identifier is provided) Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the DocumentDB Naming Constraints"
}

variable "preferred_backup_window" {
  type        = string
  default     = "07:00-09:00"
  description = "Daily time range during which the backups happen"
}
variable "skip_final_snapshot" {
  type        = bool
  description = "Determines whether a final DB snapshot is created before the DB cluster is deleted"
  default     = true
}

variable "apply_immediately" {
  type        = bool
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window"
  default     = true
}

variable "storage_encrypted" {
  type        = bool
  description = "Specifies whether the DB cluster is encrypted"
  default     = true
}

variable "snapshot_identifier" {
  type        = string
  default     = null
  description = "Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot"
}

variable "final_snapshot_identifier" {
  type        = string
  description = "The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made"
}

variable "vpc_security_group_ids" {
 # type        = string
  description = " List of VPC security groups to associate with the Cluster"
}

variable "db_cluster_parameter_group_name" {
  type = string
  description = "A cluster parameter group to associate with the cluster."
}

variable "db_subnet_group_name" {
  type        = string
  description = " A DB subnet group to associate with this DB instance"
}

variable "environment" {
  description = "Name of the environment"
}

variable "backup_retention_period" {
  type        = number
  description = "The days to retain backups for. Default 1"
  default     = 5
}