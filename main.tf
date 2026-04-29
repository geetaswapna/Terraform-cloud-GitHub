terraform {
    required_version = "~> 1.14.9" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.42.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        
	}

resource "aws_instance" "swapnainfra" {
	ami = "ami-098e39bafa7e7303d" 
	instance_type = "t3.micro"
}
