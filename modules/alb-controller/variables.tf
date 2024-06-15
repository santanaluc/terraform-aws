variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added"
}

variable "oidc_cluster" {
  type        = string
  description = "HTTPS URL from OIDC provicer of the EKS Cluster"
}