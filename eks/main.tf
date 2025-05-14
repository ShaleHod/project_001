module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.29"
  subnets         = var.subnet_ids
  vpc_id          = var.vpc_id

  eks_managed_node_groups = {
    default = {
      instance_types = ["t2.micro"]
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 1
    }
  }

  enable_irsa = true
  tags = {
    Environment = "shalev"
  }
}
