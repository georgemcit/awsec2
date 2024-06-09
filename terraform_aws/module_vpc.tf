module "vpc" {
  source            = "./vpc/"
  subnet_id         = "aws_subnet.george.id"
  vpc_cidr_block    = "172.16.0.0/16"
  vpc_id            = "aws_vpc.george.id"
  sb_cidr_block     = "172.16.10.0/24"
  tags              = "tf-george"
  availability_zone = "us-east-2a"
}
