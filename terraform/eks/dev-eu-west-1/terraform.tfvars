### TAGS ###
tag_product = "asmt"
tag_contact = "Mykhail Poda"
tag_cost_code = "00001"
tag_environment = "dev"
tag_provisioner = "github"

### REMOTE STATE ###
vpc_remote_state_config = {
  region = "eu-west-1"
  bucket = "asmt-aws-terraform-state-bucket-270930892402"
  key    = "dev/eks/vpc.tfstate"
}

### EKS ###
eks_cluster_version = "1.27"
eks_ip_family = "ipv4"
eks_service_ipv4_cidr = "192.168.1.0/24"
eks_addon_name = "vpc-cni"
eks_node_instance_type = "t3a.small"
aws_auth_roles = [
  "arn:aws:iam::270930892402:role/github-connection-provider-role",
  "arn:aws:iam::270930892402:role/aws-reserved/sso.amazonaws.com/eu-west-1/AWSReservedSSO_AdministratorAccess_2546bd6cb177278c",
]
aws_auth_accounts = [
  270930892402
]

### NODE GROUP ###
iam_role_additional_policies = []
