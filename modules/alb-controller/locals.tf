locals {
  oidc_cluster = split("/", var.oidc_cluster)[4]
}