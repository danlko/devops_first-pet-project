output "server_public_ip" {
  description = "Public IP address of the EC2 instance"
  value = aws_instance.app_server.public_ip
}

output "ssh_command" {
  description = "Command to connect to the server"
  value = "ssh -i my-devops-key.pem ubuntu@${aws_instance.app_server.public_ip}"
}