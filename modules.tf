module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.eks_network.subnet_public_1a
  public_subnet_1b = module.eks_network.subnet_public_1b
}

# module "eks_managed_node_group" {
#   source            = "./modules/mng"
#   project_name      = var.project_name
#   cluster_name      = module.eks_cluster.cluster_name
#   capacity_type     = var.capacity_type
#   subnet_private_1a = module.eks_network.subnet_private_1a
#   subnet_private_1b = module.eks_network.subnet_private_1b
#   tags              = local.tags
# }

module "alb-controller" {
  source       = "./modules/alb-controller"
  project_name = var.project_name
  tags         = local.tags
}