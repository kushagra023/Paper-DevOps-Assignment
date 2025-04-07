resource "aws_key_pair" "dev_key" {
  key_name   = "dev_key"
  public_key = var.public_key
}

resource "aws_security_group" "allow_ssh_http" {
  name_prefix = "allow_ssh_http-"  # Unique, avoids duplicate errors
  description = "Allow SSH, HTTP, and HTTPS"

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

  ingress {
    from_port   = 443
    to_port     = 443
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

resource "aws_instance" "web" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.dev_key.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id] # Use SG ID instead of name

  tags = {
    Name = "PaperSocialApp"
  }
}
