provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "C:\\Users\\user\\.aws\\credentials"
  profile                 = "default"
}
resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}