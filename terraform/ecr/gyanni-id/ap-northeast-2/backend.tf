terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "gyanni-id-apnortheast2-tfstate"
    key            = "provisioning/terraform/ecr/gyanni-id/ap-northeast-2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

