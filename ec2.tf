# ec2.tf

# EC2 com Apache
data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

# porta 80
resource "aws_security_group" "web_sg" {
  name        = "web-server-sg"
  description = "Permite trafego HTTP na porta 80"
  vpc_id      = aws_vpc.clc_vpc.id

  ingress {
    description = "HTTP de qualquer lugar"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web_server_sg_tf"
  }
}

# Subnet publica 1a
resource "aws_instance" "web_server" {
  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet_1a.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "CHEGUEI ATÉ AQUI - Renata Cardoso Claudino da Silva - CLC 16" > /var/www/html/index.html
              EOF

  tags = {
    Name = "web-server-clc16"
  }
}