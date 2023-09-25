### TAGS ###
variable "tag_environment" {
  type = string
  description = "This environment for which you create"
}

variable "tag_product" {
  type = string
  description = "Product name"
}

variable "tag_provisioner" {
  type = string
  description = "Provide name of provisioner with which you are run. Eg. github, manual, manual-script"
}

variable "tag_contact" {
  type = string
  description = "Responsible contact"
}

variable "tag_cost_code" {
  type = string
  description = "Code that use for calculation product expenses"
}

### REMOTE STATE ###
variable "vpc_remote_state_config" {
  type = object({
    region = string
    bucket = string
    key    = string
  })
}

### NODE GROUP ###
variable "iam_role_additional_policies" {
  type = set(string)
  default = []
}

### EKS Cluster ###
variable "eks_cluster_version" {
  type = string
}

variable "eks_ip_family" {
  type = string
  default = "ipv4"
}

variable "eks_service_ipv4_cidr" {
  type = string
  default = "192.168.1.0/24"
}

variable "eks_addon_name" {
  type = string
  default = "vpc-cni"
}

variable "eks_node_instance_type" {
  type = string
}
