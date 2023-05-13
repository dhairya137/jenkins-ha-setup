provider "aws" {
  region = "ap-south-1"
}

variable "instance_name" {
  type = string
  default = "live-test-instance"
}

variable "ami_id" {
  type = string
  default = "ami-02eb7a4783e7e9317"
}

variable "instance_type" {
  type = string
  default = "t2.small"
}

variable "key_name" {
  type = string
  default = "linux-keypair"
}

variable "security_group_ids" {
  type    = list(string)
  default = ["sg-0eb547ef9df0d9b56"]
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-0b251f7913ce4e341", "subnet-01cac6aaaaa1db8eb", "subnet-0a8eb5f14e4ce2f84"]
}