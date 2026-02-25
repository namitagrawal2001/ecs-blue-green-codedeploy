terraform {
  backend "s3" {
    bucket = "namit-tf-state-2026"
    key    = "bluegreen/terraform.tfstate"
    region = "ap-south-1"
  }
}
