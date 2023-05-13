## Setup Architecture

![jenkins-ha](https://user-images.githubusercontent.com/106984297/226690774-66731923-a2cd-45cc-b387-c959e5b713c1.png)

## Objectives

We will deploy jenkins on aws autoscaling group with application load balancer and efs filesystem for jenkins data storing.

## Tools and Services used in this project

1. Packer
2. Ansible
3. Terraform
4. Python Boto3

## AWS Services used in this project

1. IAM
2. EC2
3. EFS
4. AWS Parameters Store
5. Application Load Balancer
6. Autoscaling Group

## Prerequisites

For this setup following things should be installed in your local environment.

1. Packer
2. Terraform
3. Ansible
4. AWS Cli (Configured with your aws account)

## Project Documentation.

Refer [Jenkins Setup Using AWS Autoscaling Group](https://devopscube.com/jenkins-autoscaling-setup/) for the entire setup walkthrough.
