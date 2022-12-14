variable "filename" {
	default = "/home/ubuntu/terraform/terraform_variable/devops-automated.txt"
}

variable "content" {
	default = "This is autogenerated from variable.tf"
}

variable "devops_op_trainer" {}

variable "content_map" {
	type = map
	default = {
	"content1" = "This is content 1"
	 "content2" = "This is content 2"
	}
}

variable "aws_ec2_object" {
	type = object({
	name = string
	instances = number
	key = list(string)

})
	default = {
                name = "Ec2"
                instances = 4
		key =["key.pem","key2.pem"]
}
}
