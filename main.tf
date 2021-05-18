# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
   access_key = "AKIASYIIRCL7UKMUYKOT"
  secret_key = "PSDvSaJdkeKkOCICVeoBY118Jv3zdoW/VNMHA6wz"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
