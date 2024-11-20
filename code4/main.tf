resource "aws_lightsail_instance" "lightsail" {
  name              = "devserver"
  blueprint_id      = "ubuntu_24_04"
  bundle_id         = "medium_1_0"
  availability_zone = "us-east-1a"
  user_data = file("setup.sh")
  key_pair_name     = "week2day2"
  tags = {
    eve  = "devs"
    team = "deavteam"
  }
}