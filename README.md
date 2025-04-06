# 📄 Paper Social DevOps Assessment

This project demonstrates a complete DevOps workflow, combining Infrastructure as Code, Configuration Management, CI/CD, and Application Deployment. It uses **Terraform**, **Ansible**, **GitHub Actions**, and **Python virtual environments** to provision and manage infrastructure, configure systems, and automate deployments.

---

## 📁 Project Structure

$ ls
ansible/  README.md  terraform/  Vagrantfile  website/

## 🧰 Tools & Technologies

- **Terraform** – Infrastructure provisioning on AWS
- **Ansible** – Configuration management and software installation
- **GitHub Actions** – CI/CD pipeline automation
- **Docker** – Containerization for services (if applicable)
- **AWS CloudWatch** – System monitoring and logging
- **Python venv** – Isolated Python environment for automation scripts

---

## ⚙️ Setup Instructions

### ✅ 1. Clone the Repository

git clone https://github.com/kushagraag/paper-social-devops-assessment.git
cd paper-social-devops-assessment

✅ 2. (Optional) Create a Python Virtual Environment


python -m venv .venv
source .venv/Scripts/activate    # On Windows
# OR
source .venv/bin/activate        # On Linux/macOS

✅ 3. Install Python Dependencies


pip install -r requirements.txt
☁️ Terraform – Infrastructure Provisioning
Navigate to the terraform directory and execute:


cd terraform
terraform init
terraform plan
terraform apply


This will create AWS resources like EC2 instances, security groups, etc. Ensure AWS CLI is configured.

🧪 Ansible – Configuration Management
After provisioning the infrastructure:

Update your ansible/inventory.ini with the public IPs of the EC2 instances.

Then run the playbook:


cd ansible
ansible-playbook -i inventory.ini playbook.yml
This installs Docker, CloudWatch Agent, and other necessary software.

🔁 CI/CD – GitHub Actions
The CI/CD pipelines are configured inside .github/workflows/.

What it does:
Lints Terraform and Ansible code

Validates and applies infrastructure changes

Runs provisioning and deployment scripts

(Optional) Deploys to remote servers or S3 buckets

🌍 Website
The website/ directory contains a simple HTML site. You can:

Deploy it to an S3 bucket with static website hosting enabled

Serve it via Nginx/Apache on your EC2 instance

ansible-playbook --syntax-check playbook.yml
terraform validate

🧠 Troubleshooting

🛠 Ansible on Windows: Recommended to run inside WSL (Ubuntu) for compatibility.

⚠️ AWS Credentials: Ensure your AWS access key and secret key are configured using aws configure.

📛 SSH Errors: Ensure your .pem key is correctly used and permissions are chmod 400 on Linux or properly referenced in Windows.

📜 License
This project is licensed under the MIT License. See the LICENSE file for details.

🙋‍♂️ Author

Kushagra
DevOps Engineer

🔗 LinkedIn
💻 GitHub
