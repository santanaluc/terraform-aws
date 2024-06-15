variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "subnet_private_1a" {
  type        = string
  description = "Subnet ID from AZ 1a"
}

variable "subnet_private_1b" {
  type        = string
  description = "Subnet ID from AZ 1a"
}

variable "capacity_type" {
  type = string
  description = "SPOT or ON DEMAND"
}