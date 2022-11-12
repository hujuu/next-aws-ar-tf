variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  region     = "ap-northeast-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  required_providers {
	aws = {
	  version = ">= 3.42.0"
	  source  = "hashicorp/aws"
	}
  }
} 