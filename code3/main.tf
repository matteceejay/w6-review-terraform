resource "aws_lightsail_instance" "matl1" {
  name              = "my-server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  key_pair_name     = "week2day2"
  user_data         = file("install.sh")
  bundle_id         = "nano_3_0"
  tags = {
    env  = "dev"
    team = "devops"
  }
} 