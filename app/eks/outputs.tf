output "cluster_name" {
  value = module.eks.cluster_name
}

output "kubeconfig_path" {
  value = "~/.kube/config"
}

output "cluster_oidc_issuer_url" {
  value = module.eks.cluster_oidc_issuer_url
}