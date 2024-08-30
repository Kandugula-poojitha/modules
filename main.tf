provider "aws" {
  
  region = "us-east-1"
}

module "aws_instance" {
    source = "./ec2_instance/module"
    ami_id = "enter your ami id"
    secret_key = "enter your secret key"
    access_key = "enter your access key"

  
}

module "aws_s3_bucket" {
    source = "./s3_bucket/subdir_s3"
    secret_key = "enter your secret key"
    access_key = "enter your access key"

  
}