terraform {
  backend "s3" {
    bucket = "w6-mo-bucket-terraform"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-tfstate_lock"
    encrypt = true
  }
}
