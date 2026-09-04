# AWS account config
iam_profile = "student"
region = "eu-central-1"

# General for all infrastructure
# This is the name prefix for all infra components
name = "danit"


vpc_id = "vpc-0097f6d36d724839d" #changed to my default
subnets_ids = ["subnet-0ca1f2c0923c88f38", "subnet-0894d3b402c0cc522", "subnet-0071fe589466da6bd"] #changed to my default


tags = {
  Environment = "test"
  TfControl   = "true"
}


zone_name = "pls-accept.pp.ua"

