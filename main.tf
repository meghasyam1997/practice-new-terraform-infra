module "vpc" {
  source = "git::https://github.com/meghasyam1997/practice-new-terraform-vpc.git"

  for_each         = var.vpc
  cidr_block       = each.value["cidr_block"]
  tags             = local.tags
  env              = var.env
  subnets          = each.value["subnets"]
  default_vpc_id   = var.default_vpc_id
  default_vpc_cidr = var.default_vpc_cidr
  default_vpc_rtid = var.default_vpc_rtid
}