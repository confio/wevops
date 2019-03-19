variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-1"
}

variable "validator_machine" {
    description = "aws instance to run the validator on"
    default     = "m5.large"
}

# https://cloud-images.ubuntu.com/locator/ec2/
# ubuntu-bionic-18.04 (x64) with ebs
variable "aws_amis" {
  default = {
    "eu-west-1" = "ami-08d658f84a6d84a80"
    "eu-cetnral-1" = "ami-0a4e97a724f672c4c"
    "us-west-1" = "	ami-045ea583d8678e780"
  }
}

