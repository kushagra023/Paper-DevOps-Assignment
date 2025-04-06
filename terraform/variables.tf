variable "region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of the existing AWS key pair"
  type        = string
}

variable "public_key_path" {
  description = "C:/Users/akush/Downloads/DevOpsKey.pem"
  type        = string
}

variable "ami_id" {
  description = "Ubuntu 22.04 LTS in ap-south-1"
  default     = "ami-0dcc0ebde7b2e00db" # Verify current AMI
}
