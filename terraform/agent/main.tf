provider "aws" {
  region = "us-west-2" # Change this if you wnat to do it in different region
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-0e68ab34763bcba1f" # Change this
  instance_type      = "t2.small"
  key_name           = "techiescamp" # Change this
  subnet_ids         = ["subnet-058a7514ba8adbb07", "subnet-0dbcd1ac168414927", "subnet-032f5077729435858"] # Change this
  instance_count     = 1
}
