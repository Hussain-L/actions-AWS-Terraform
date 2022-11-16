terraform {
  cloud {
    organization = "hussain-l"

    workspaces {
      name = "github-actions-aws"
    }
  }
}
provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "myFirstInstance" {
  ami           = "ami-024c319d5d14b463e"
  instance_type = "t2.micro"
  tags= {
    Name = "github-actions"
  }
}
