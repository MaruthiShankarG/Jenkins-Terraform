terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
     
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-09988af04120b3591"
   instance_type = "t2.micro"
   key_name = "MGJenkins"
   tags = {
      Name = "mgTFInstance"
   }

}
