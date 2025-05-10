terraform {
  backend "s3" {
    bucket = "for-hw-20-danit-sr"
    key    = "artemmakarenkoorg/nginx-instance/terraform.tfstate"
    region = "eu-west-1"
    profile = "mfa"
  }
}
