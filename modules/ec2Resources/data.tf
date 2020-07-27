# data "terraform_remote_state" "network" {
#   backend = "s3"
#   config = {
#     bucket = "test-nuthan-bucket1"
#     key    = "terraform.tfstate"
#     region = "eu-west-1"
#   }
# }
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}