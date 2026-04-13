data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]  # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_security_group" "kijanikiosk" {
  name        = "kijanikiosk-sg"
  description = "SSH and app ports for KijaniKiosk staging"

  ingress {
    description = "SSH from operator IP only"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.operator_cidr]   # e.g. "41.90.x.x/32" — never 0.0.0.0/0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

module "servers" {
  for_each = var.servers

  source            = "./modules/app_server"
  name              = each.key
  role              = each.value.role
  ami_id            = data.aws_ami.ubuntu.id
  instance_type     = each.value.instance_type
  key_name          = var.key_name
  security_group_id = aws_security_group.kijanikiosk.id
}