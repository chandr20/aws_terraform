provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "C:\\Users\\user\\.aws\\credentials"
  profile                 = "default"
}
resource "aws_s3_bucket" "bucket_create" {
  bucket = "test-nuthan-bucket1"
  force_destroy = true
  versioning{
    enabled = false
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
terraform {
  backend "s3" {
    bucket = "aws-nuthan-bucker"
    key    = "myapp/terraform.tfstate"
    region = "ap-south-1"
  }
}