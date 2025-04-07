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

variable "public_key" {
  description = "The public key to use for the AWS key pair"
  type        = string
}


variable "ami_id" {
  description = "Ubuntu 22.04 LTS in ap-south-1"
  default     = "ami-02a2af70a66af6dfb"
}
