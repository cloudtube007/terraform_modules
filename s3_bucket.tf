#resource "aws_s3_bucket" "test_bucket" {
#  bucket = "awsterraformmodule"
#  tags = {
#    Name = "awsterraformmodule"
#  }
#}

terraform {
  backend "s3" {
    bucket = "awsterraformmodule"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}