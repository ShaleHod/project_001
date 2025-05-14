module "vpc" {
  source = "./vpc"
}

module "eks" {
  source     = "./eks"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
}

module "helm" {
  source       = "./helm"
  cluster_name = module.eks.cluster_name
  cluster_oidc_issuer_url = module.eks.cluster_oidc_issuer_url
  kubeconfig_path = module.eks.kubeconfig_path
}