# Configure the AWS Provider
provider "aws" {
  version = "~> 2.39"
  region  = "us-east-2"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
