resource "aws_vpc" "georgevpc" {
  vpc_name   = var.vpc_name
  cidr_block = var.cidr_block_vpc
  tags = var.tags
  }
}
resource "aws_subnet" "georgesb" {
  vpc_id              = var.vpc_id
  vpc_public_subnets  = var.vpc_public_subnets
  vpc_private_subnets = var.vpc_private_subnets
  availability_zone   = var.availability_zone 
  }
}
