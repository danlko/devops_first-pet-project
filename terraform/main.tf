resource "aws_security_group" "web_sg" {
  name = "web-server-sg"
  description = "Allow SSH and HTTP traffic"

  ingress {
    description = "SSH access"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP access"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    description = "HTTP access"
    from_port = 5000
    to_port = 5000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
  ami = "ami-04b4f1a9cf54c11d0"
  instance_type = "t3.micro"
  key_name = "my-devops-key"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "My-First-Terraform-Server"
  }

}
