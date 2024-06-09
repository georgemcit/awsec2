resource "aws_vpc" "george" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.tags
  }
}

resource "aws_subnet" "george" {
  vpc_id            = var.vpc_id
  cidr_block        = var.sb_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = var.tags
  }
}
variable "vpc_cidr_block"{
  type  =string
}
variable "sb_cidr_block"{
  type  =string
}
variable "vpc_id"{
  type  =string
} 
variable "tags"{
  type  =string
}
variable "availability_zone"{
  type  =string
}
