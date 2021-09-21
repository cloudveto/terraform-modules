variable "name" {
  description = "Name of application"
}
variable "account_id" {
  description = "AWS Account ID"
}
variable "common_tags" {
  type = map(string)
}
variable "environment" {
  description = "Name of the environment"
}
variable "scale_up_cooldown_seconds" {
  description = "Scale up in seconds"
}
variable "scale_down_cooldown_seconds" {
  description = "Scale down in seconds"
}
variable "threshold_high" {
  description = "Alarm threshold high"
}
variable "threshold_low" {
  description = "Alarm threshold low"
}
#variable "version" {
#  description = "Version of container which is latest by default"
#}
variable "min_count" {
  description = "Minimum capaity"
}
variable "max_count" {
  description = "Mazimum capaity"
}
variable "ecs_service_name" {
  description = "The resource type and unique identifier string for the resource associated with the scaling policy"
}
variable "ecs_cluster_name" {
  description = "The resource type and unique identifier string for the resource associated with the scaling policy"
}
variable "scale_depends_on" {
  description = "scale_depends_on"
  type        = any
  default     = []
}
variable "alarm_name_high" {
  description = "Alarm Name High"
}
variable "alarm_name_low" {
  description = "Alarm Name Low"
}
variable "alarm_statistic_high" {
  description = "Statistic for high Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
}
variable "alarm_statistic_low" {
  description = "Statistic for high Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
}
variable "alarm_period_high" {
  description = "Alarm periof 40"
}
variable "alarm_period_low" {
  description = "Alarm periof 80"
}
variable "alarm_metric_name" {
  description = "Should eirher of these MemoryUtilization, MemoryReservation, CPUUtilization, CPUReservation"
}
variable "scaling_adjustment_up" {
  description = "Add no of tasks when reached high cpu utilisation"
  default     = 1
}
variable "scaling_adjustment_down" {
  description = "remove no of tasks when reached low cpu utilisation"
  default     = -1
}