variable "cluster_name" {
  type = string
  default = "shalev-eks-cluster"
}

variable "subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}
