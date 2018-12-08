#-------------------------------------
# Terraform Settings
#-------------------------------------
terraform {
  required_version = ">= 0.11.0"

  backend "s3" {
    bucket  = "jikumaru-private-bucket"
    key     = "tfstate/terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "jitsudan"
  }
}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

#-------------------------------------
# Create Resources
#-------------------------------------
module "s3-bucket" {
  source         = "./modules"
  aws_account_id = "${var.aws_account_id}"
  bucket_name    = "jikumaru-sample-bucket"
}
