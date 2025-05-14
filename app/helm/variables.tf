variable "cluster_name" {
  type = string
}

variable "cluster_oidc_issuer_url" {
  type = string
}

variable "kubeconfig_path" {
  type = string
  default = "~/.kube/config"
}

variable "namespace" {
  type    = string
  default = "shalev_cluster"
}