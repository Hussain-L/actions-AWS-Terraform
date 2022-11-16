provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "myFirstInstance" {
  ami           = "ami-0b9064170e32bde34"
  instance_type = "t2.micro"
  tags= {
    Name = github-actions
  }
}