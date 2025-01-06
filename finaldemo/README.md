# Deploy application inside AWS EC2 Instance with Terraform

This project uses Terraform to deploy an AWS EC2 instance configured with required security, key pair, and provisioning scripts. The instance is intended for hosting an application and serves a sample HTML file.

---

## Features
- **EC2 Instance**: Deploys an AWS EC2 instance using a user-specified AMI.
- **Provisioning**: Transfers and executes custom scripts and files on the instance.
- **Secure Access**: Uses an SSH key pair for secure access.
- **Public IP**: Associates a public IP for easy remote access.
- **Tags**: Adds a custom name tag for easy identification in AWS.

---

Here’s the updated section with instructions to generate the SSH key pair using `ssh-keygen` inside the `supportFile` directory:

---

## Prerequisites
- AWS account with appropriate permissions.
- [Terraform installed](https://developer.hashicorp.com/terraform/downloads).
- An existing VPC, subnet, and security group.
- **SSH Key Pair**: Create an SSH key pair to secure access as follows:

---

## Generate SSH Key Pair

1. Open a terminal and navigate to the `supportFile` directory:
   ```bash
   cd ./supportFile
   ```

2. Generate the key pair using `ssh-keygen`:
   ```bash
   ssh-keygen -t rsa -b 4096 -f mykey -C "deployer-key"
   ```

   - `-t rsa`: Specifies the key type as RSA.
   - `-b 4096`: Sets the key size to 4096 bits for increased security.
   - `-f mykey`: Saves the private key as `mykey` and the public key as `mykey.pub`.
   - `-C "deployer-key"`: Adds a comment for identification.

3. When prompted for a passphrase, you can press Enter to skip it (optional, for ease of use in this setup).

---

## Result
- The private key (`mykey`) and public key (`mykey.pub`) will be created in the `supportFile` directory.
- Ensure the private key (`mykey`) is kept secure and not shared.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone <repository_url>
   cd <repository_directory>

2. **Initialize the Terraform**:
   ```bash
   terraform init

2. **Apply Configuration**:
   ```bash
   terraform apply