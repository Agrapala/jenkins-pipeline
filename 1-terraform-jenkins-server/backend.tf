terraform {
  backend "s3" {
    bucket = "agra1"
    region = "us-east-1"
    key = "jenkins-server/terraform.tfstate"
  }
}