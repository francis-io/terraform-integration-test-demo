resource "aws_s3_bucket" "demo" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.demo.id
  versioning_configuration {
    status = "Enabled"
    # status = "Suspended"
  }
}

variable "bucket_name" {
}

output "bucket_id" {
    value = aws_s3_bucket.demo.id
}

provider "aws" {
  region = "eu-west-2"  # London
}
