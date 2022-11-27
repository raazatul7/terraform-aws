terraform {
	required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~>4.16"
	 }
	}	
	required_version = ">=1.2.0"
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "aws_ec2_by_terraform" {
	ami = "ami-08c40ec9ead489470"
	instance_type = "t2.micro"
	tags = {
	Name = "TerraformServer"	
	}	

}

resource "aws_s3_bucket" "bucket_s3" {

bucket = "trainwithshubham-tf-test-bucket"

tags = {
Name = "trainwithshubham-bucket"

Environment = "Dev"
}
}	

output "ec2_public_ips"{
	value = aws_instance.aws_ec2_by_terraform.public_ip
}
