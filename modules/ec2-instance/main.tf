# Configure the AWS Provider

provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = var.security_groups
  user_data       = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y apache2
              systemctl start apache2
              systemctl enable apache2
              EOF

  tags = {
    Name = var.instance_name
    Env  = var.environment
  }
}