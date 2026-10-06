terraform {
  required_version = ">= 1.6.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "networking" {
  source = "../../modules/networking"

  project_name = var.project_name
  environment  = var.environment
  aws_region   = var.aws_region
  vpc_cidr     = var.vpc_cidr
  azs          = var.azs

  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

module "compute" {
  source = "../../modules/compute"

  project_name      = var.project_name
  environment       = var.environment
  ami_id            = data.aws_ami.amazon_linux_2023.id
  instance_type     = var.instance_type
  subnet_ids        = module.networking.private_subnet_ids
  vpc_id            = module.networking.vpc_id
  security_group_id = module.networking.app_security_group_id
  min_size          = var.compute_min_size
  max_size          = var.compute_max_size
  desired_size      = var.compute_desired_size
  tags              = var.tags
}
