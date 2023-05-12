provider "aws" {
  region = "us-west-2" # Change this if you wnat to do it in different region
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-058a7514ba8adbb07", "subnet-0dbcd1ac168414927", "subnet-032f5077729435858"] # Change this
  ami_id        = "ami-074d40b56472c5b9b" # Change this
  instance_type = "t2.small" 
  key_name      = "techiescamp" # Chnage this
  environment   = "dev"
  vpc_id        = "vpc-0a5ca4a92c2e10163" # Change this
}