locals {
  tags = {
    Contact     = var.tag_contact
    Cost_Code   = var.tag_cost_code
    Environment = var.tag_environment
    Provisioner = var.tag_provisioner
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  private_subnet_ids = data.terraform_remote_state.vpc.outputs.vpc_private_subnet_ids

  worker_node_policy = toset([
    "arn:${data.aws_partition.current.partition}:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:${data.aws_partition.current.partition}:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
    "arn:${data.aws_partition.current.partition}:iam::aws:policy/AmazonEKS_CNI_Policy"
  ])

  master_node_policy = toset([
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  ])

  eks_seg_rules = [
    {
      from_port         = 0
      to_port           = 65365
      protocol          = "-1"
      type              = "ingress"
    },
    {
      from_port         = 0
      to_port           = 65365
      protocol          = "-1"
      type              = "egress"
    }
  ]
}