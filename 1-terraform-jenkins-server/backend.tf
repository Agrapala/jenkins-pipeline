terraform {
  backend "s3" {
    bucket = "jenkins-app-kub-2024-v2"
    region = "us-east-1"
    key = "jenkins-server/terraform.tfstate"
  }
}