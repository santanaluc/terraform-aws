variable "cidr_block" {
  type        = string
  description = "Network CIDR block to be used for VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "capacity_type" {
  type        = string
  description = "SPOT or ON DEMAND"
}