module "module_ec2t" {
  source            = "./aws/"
  ami               = "data.aws_ami.amzn-linux-2023-ami.id"
  instance_type     = "c6a.2xlarge"
