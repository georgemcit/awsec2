resource "aws_lb" "george" {
  name               = "george-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [module.sg]
  subnets            = [module.vpc]

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
}
