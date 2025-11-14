#
# Variables Configuration. Check for REPLACE to substitute custom values. Check the description of each
# tag for more information
#

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  default = "mcdupyog" #REPLACE
}

variable "vpc_cidr_block" {
  description = "CIDR block"
  default = "192.168.0.0/16"
}


variable "network_availability_zones" {
  description = "Configure availability zones configuration for VPC. Leave as default for India. Recommendation is to have subnets in at least two availability zones"
  default = ["ap-south-1b", "ap-south-1a"] #REPLACE IF NEEDED
}

variable "availability_zones" {
  description = "Amazon EKS runs and scales the Kubernetes control plane across multiple AWS Availability Zones to ensure high availability. Specify a comma separated list to have a cluster spanning multiple zones. Note that this will have cost implications"
  default = ["ap-south-1b"] #REPLACE IF NEEDED
}

variable "kubernetes_version" {
  description = "kubernetes version"
  default = "1.29"
}

variable "instance_type" {
  description = "eGov recommended below instance type as a default"
  default = "r5ad.large"
}

variable "override_instance_types" {
  description = "Arry of instance types for SPOT instances"
  default = ["r5a.large", "r5ad.large", "r5d.large", "m4.xlarge"]
  
}

variable "number_of_worker_nodes" {
  description = "eGov recommended below worker node counts as default"
  default = "4" #REPLACE IF NEEDED
}

variable "ssh_key_name" {
  description = "ssh key name, not required if your using spot instance types"
  default = "mcdupyog-ssh-key" #REPLACE
}


variable "db_name" {
  description = "RDS DB name. Make sure there are no hyphens or other special characters in the DB name. Else, DB creation will fail"
  default = "mcdupyog" #REPLACE
}

variable "db_username" {
  description = "RDS database user name"
  default = "mcdupyog" #REPLACE
}

#DO NOT fill in here. This will be asked at runtime
variable "db_password" {}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCE8QytpBbpWd1I4yMePsC1TwONulrSfB28xO+9s15Mf0weeJQBsiTbWo5VQwc+tk+sPSBqDFVTjJPXoBTakctZbPoT1VH+FEmMQmJdxhSA4hQEkR6Ex+YpgMSQAMbk5fvjd8imAucoy8l7uO+D/DiYMEJSnkIGg53nMm6tRVpFUtwvyGKRF4WVtmSl6OyBQp2zkouH6vsbB8cIRA35uOtELXH7i7kFSC9CzAErtvVti71yYV4u22gvbdS8Tq7SsSa3tNvGnanWK3vvId2x4GaheeO8BOU4i+dxRiPAzXBmmZchQKYYyAZWQwc9dLW4/suZAAKTWeROLgcvhkMR2rjL"
  description = "ssh key"
}

## change ssh key_name eg. digit-quickstart_your-name



