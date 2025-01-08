terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

variable "bucket_name" {
  type = string
}

variable "region" {
  type = string
  default = "eu-west-1"
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name
}
