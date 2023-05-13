provider "aws" {
  region = "ap-south-1" # Change this if you wnat to do it in different region
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-017016f4b94dc4f08" # Change this
  subnet_ids = ["subnet-0b251f7913ce4e341", "subnet-01cac6aaaaa1db8eb", "subnet-0a8eb5f14e4ce2f84"] # CHange this
}