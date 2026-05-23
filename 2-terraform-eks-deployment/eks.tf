module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "17.24.0"

  cluster_name    = "eks-cluster"
  cluster_version = "1.24"

  cluster_endpoint_public_access = true

  vpc_id          = module.my-vpc.vpc_id
  subnets         = module.my-vpc.private_subnets

  tags = {
    environment = "development"
    application = "myapp"
  }

  node_groups = {
    dev = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_types = ["t2.small"]
    }
  }
}