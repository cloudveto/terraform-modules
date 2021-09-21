variable "name" {
  description = "metadata name"
}
variable "service_name" {
  description = " service name"
}
variable "app" {
  description = "app name"
}
variable "weight" {
  description = "preferred_during_scheduling_ignored_during_execution Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100 "
}
variable "host_network" {
  description = "host network should be true,"
}
variable "dns_policy" {
  description = "value of dns policy is ClusterFirstWithHostNet, ClusterFirst, Default or None. DNS policy for containers within the pod"
}
variable "key" {
  description = "match label key that the selector applies to"
}
variable "operator" {
  description = "Represents a key's relationship to a set of values, Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt"
}
variable "values" {
  description = "An array of string values, f the operator is In or NotIn, the values array must be non-empty."
}
variable "image" {
  description = "container image url"
}
variable "image_pull_policy" {
  description = "container image pull policy, One of Always, Never, IfNotPresent, Default to Always "
}
variable "port" {
  description = "container port number"
}
variable "path" {
  description = "liveness probe Path to access on the HTTP server."
}
variable "liveness_port" {
  description = "liveness port is http"
}
variable "mouth_path" {
  description = "vloume mouth path of cockroachdb"
}
variable "pod_management_policy" {
  description = "pod management policy is Parllel, he default policy is OrderedReady"
}
variable "termination" {
  description = "termination grace period for graceful shutdown of a node"
}
variable "topology_key" {
  description = "topology key is kubernetes.io/hostname"
}
variable "cpu_limits" {
  description = " maximum amount of compute resources allowed: CPU."
}
variable "memory_limits" {
  description = " maximum memory of compute resources allowed :Memory."
}
variable "cpu_requests" {
  description = " minimum CPU, amount of compute resources "
}
variable "memory_requests" {
  description = " minimum memory, amount of compute resources"
}
variable "update_strategy_type" {
  description = "two type of update strategy is RollingUpdate and OnDelete, By default RollingUpdate."
}
variable "volume_name" {
  description = "volume  claim template metadata name is same as volume mount name"
}
variable "access_modes" {
  description = "value of access mode isReadWriteOnce "
}
variable "storage_class_name" {
  description = "storage class name are ssd, Standard"
}
variable "resources_storage" {
  description = "resource storage is for large disk by default"
}