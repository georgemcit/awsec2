resource "aws_lb" "george" {
  name               = "george-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [for subnet in aws_subnet.public : subnet.id]

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.lb_logs.id
    prefix  = "george-lb"
    enabled = true
  }

  tags = {
    Environment = "dev"
  }
}
