provider "aws" {
  region = "ap-south-1" # Change this if you wnat to do it in different region
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-0b251f7913ce4e341", "subnet-01cac6aaaaa1db8eb", "subnet-0a8eb5f14e4ce2f84"] # Change this
  ami_id        = "ami-02eb7a4783e7e9317" # Change this
  instance_type = "t2.small" 
  key_name      = "linux-keypair" # Chnage this
  environment   = "dev"
  vpc_id        = "vpc-0a5ca4a92c2e10163" # Change this
}