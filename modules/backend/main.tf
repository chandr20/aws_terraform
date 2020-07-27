terraform {
  backend "s3" {
    bucket = "test-nuthan-bucket1"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}