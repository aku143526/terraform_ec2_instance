output "ec2_public_ips" {
  value = aws_instance.my_new_instance.public_ip
}
