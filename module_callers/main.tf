# create a bucket manually for backend initialization
# i Have "aws-nuthan-bucker" s3 bucket manually created
terraform {
  backend "s3" {
    bucket = "aws-nuthan-bucker"
    key    = "myapp/terraform.tfstate"
    region = "ap-south-1"
  }
}
module "ec2Resources" {
  source = "../modules/ec2Resources"
}
module "s3" {
  source = "../modules/s3"
}

