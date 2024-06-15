output "eks_vpc_config" {
  value = aws_eks_cluster.eks_cluster.vpc_config
}

output "oidc" {
  value = data.tls_certificate.eks_oidc_tls_cert.certificates[*].sha1_fingerprint
}

output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.id
}

output "oidc_cluster" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}