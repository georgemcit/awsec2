data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "george" {
  ami           = var.ami
  instance_type = var.instance_type

  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

  tags = {
    Name = var.tags
  }
}

