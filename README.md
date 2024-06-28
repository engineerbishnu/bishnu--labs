# bishnu--labs
This repo is used for exam lab.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with proper permissions
- AWS CLI installed and configured
- An existing key pair in your AWS region



### 1. Clone this repo:
```sh
git clone https://github.com/your-username/your-repo.git](https://github.com/engineerbishnu/bishnu--labs.git
cd /bishnu--labs

### 2. Initialize your terraform first and do these wisely:

```sh
terraform init
terraform plan  ---> use for check the resource are created or not.
terraform validate   ---> use for validate our terraform code.
terraform apply -auto-approve   ---> used for auto approve resource creations.
