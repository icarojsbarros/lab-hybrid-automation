output "instance_ip" { value = aws_instance.app_server.public_ip }
output "vpc_id" { value = aws_vpc.main.id }
output "sg_id" { value = aws_security_group.allow_ssh.id }
