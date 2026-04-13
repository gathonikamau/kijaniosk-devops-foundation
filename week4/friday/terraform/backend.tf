terraform {
  backend "s3" {
    bucket         = "kijanikiosk-tfstate"
    key            = "staging/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "kijanikiosk-tfstate-lock"
    encrypt        = true
  }
}