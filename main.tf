provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASYIIRCL7UKMUYKOT"
  secret_key = "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"
}

 

resource "aws_instance" "web" {
  ami           = "ami-0b9064170e32bde34"
  instance_type = "t2.micro"
}
