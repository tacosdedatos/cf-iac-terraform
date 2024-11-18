terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "chk"
}

resource "aws_instance" "app_server" {
  instance_type = "t2.micro"
  ami           = "ami-046b5b8111c19b3ac"

  tags = {
    Name = "ServidorCodigoFacilito"
  }
}
