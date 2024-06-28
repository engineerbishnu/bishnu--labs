provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "bishnu-SG" {
  name        = "bishnu-SG"
  description = "Allow HTTP and SSH traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
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
}

resource "aws_instance" "Bishnu-Nginx-Server" {
  ami             = "ami-09040d770ffe2224f"
  instance_type   = "t2.micro"
  key_name        = "bishnu-keypair"
  security_groups = [aws_security_group.bishnu-SG.name]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "Bishnu-Nginx-Server"
  }
}