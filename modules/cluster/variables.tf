variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added"
}

variable "public_subnet_1a" {
  type        = string
  description = "Subnet to EKS Cluster"
}

variable "public_subnet_1b" {
  type        = string
  description = "Subnet to EKS Cluster"
}