provider "aws" {
  region = var.region
}

module "vpc" {
  source             = "./modules/vpc"
  cidr_block         = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
  name               = var.project_name
}

module "security_group" {
  source = "./modules/security-group"
  name   = "${var.project_name}-sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.security_group_id
  name              = "${var.project_name}-instance"
}
