# Create a VPC
module "vpc" {
  source               = "./vpc"
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  vpc_tag_name         = var.vpc_tag_name
  cidr_public_subnet   = var.cidr_public_subnet
  cidr_private_subnet  = var.cidr_private_subnet
  eu_availability_zone = var.eu_availability_zone
}
