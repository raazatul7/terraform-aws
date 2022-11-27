# Nginx with Docker using Terraform

[Terraform Installation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Linux

- `sudo apt-get update && sudo apt-get install -y gnupg software-properties-common`

<br>

- `wget -O- https://apt.releases.hashicorp.com/gpg | \ gpg --dearmor | \ sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg`

<br>

- `gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint`

<br>

- `echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(Isb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list`

<br>

- `sudo apt update`

<br>
  
- `sudo apt-get install terraform`

### Docker Installation

- `sudo apt update`
- `sudo apt-get install docker.io`

### Run Terraform

Goto main.tf location
In terminal, run:

- `terraform init`

<br>

- `terrform validate` (to check everything is fine and providers are installed correctly)
<br>

- `terraform plan` (to ensure docker or any other dependency is install and working fine with permissions)
<br>

- `terraform apply`
<br>
