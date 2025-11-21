terraform {
  backend "s3" {
    bucket = "remote-backend-s3-2011"
    key    = "statefile/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
