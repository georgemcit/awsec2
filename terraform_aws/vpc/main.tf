resource "aws_instance" "george" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

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
