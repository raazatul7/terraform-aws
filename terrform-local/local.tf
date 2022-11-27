resource "local_file" "devops" {
filename= "/home/ubuntu/terraform/terrform-local/devops_automated.txt"
content= "Hi, I want to become a devops engineer who knows Terraform."
}

resource "random_string" "rand-str"{
length = 16
special = true
override_special = "#$%&*()-_=4+[]{}<>:?"
}
output "rand-str" {
value = random_string.rand-str[*].result
}

