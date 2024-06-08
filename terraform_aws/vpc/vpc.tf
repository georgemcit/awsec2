resource "aws_vpc" "georgevpc" {
  cidr_block = var.cidr_block_vpc
  tags = var.tags
  }
}
resource "aws_subnet" "georgesb" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block_sb
  availability_zone = var.availability_zone 
  }
}
