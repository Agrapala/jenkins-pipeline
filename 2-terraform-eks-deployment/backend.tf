terraform {
  backend "s3" {
    bucket = "agra1"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}