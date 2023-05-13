provider "aws" {
  region = "ap-south-1" # Change this if you wnat to do it in different region
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-02eb7a4783e7e9317" # Change this
  instance_type      = "t2.small"
  key_name           = "linux-keypair" # Change this
  subnet_ids         = ["subnet-0b251f7913ce4e341", "subnet-01cac6aaaaa1db8eb", "subnet-0a8eb5f14e4ce2f84"] # Change this
  instance_count     = 1
}
