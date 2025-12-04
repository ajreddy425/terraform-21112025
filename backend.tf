terraform {
  backend "s3" {
    bucket         = "remote-backend-s3-2012" // changed due to account issues
    key            = "statefile/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
