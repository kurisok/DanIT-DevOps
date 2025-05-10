provider "aws" {
  region = "eu-west-1"
  profile = "mfa"
}

resource "aws_key_pair" "deployer" {
  key_name   = "for-my-hw-new"
  public_key = file("C:/Users/kurisok/.ssh/my-ssh.pub")
}

resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP"

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

resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-0df368112825f8d8f"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.allow_ssh_http.name]

  tags = {
    Name = "web-${count.index + 1}"
  }

  provisioner "local-exec" {
    command = "echo [web] > inventory.ini && echo '${self.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa' >> inventory.ini"
  }
}
