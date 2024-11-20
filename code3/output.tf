output "my-public-ip" {
    value = aws_lightsail_instance.matl1.public_ip_address

}
output  "my-private_ip_address" {
    value = aws_lightsail_instance.matl1.private_ip_address
  
}