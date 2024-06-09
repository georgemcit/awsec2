resource "aws_vpc" "georgevpc" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr_block
  tags = var.vpc_tags
  }
resource "aws_subnet" "georgesb" {
  vpc_id              = var.vpc_id
  vpc_public_subnets  = var.vpc_public_subnets
  vpc_private_subnets = var.vpc_private_subnets
  vpc_availability_zone   = var.vpc_availability_zone 
  }
