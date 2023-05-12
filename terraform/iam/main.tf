provider "aws" {
  region = "us-west-2" # Change this if you wnat to do it in different region
}

module "jenkins_iam" {
  source = "../modules/iam"
  instance_profile_name = "jenkins-instance-profile"
  iam_policy_name       = "jenkins-iam-policy"
  role_name             = "jenkins-role"
}
