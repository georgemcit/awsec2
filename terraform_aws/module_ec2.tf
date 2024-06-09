
module "ec2" {
  source            = "./ec2/"
  ami               = "data.aws_ami.amzn-linux-2023-ami.id"
  instance_type     = "c6a.2xlarge"
  tags              = "tf-george"
  subnet_id         = module.vpc.vpc_id
}

