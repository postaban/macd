provider "aws" {
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "<replace-with-s3-bucket>"
    key    = "us-west-2/tfstate.json"
    region = "us-west-2"
    dynamodb_table = "<replace-with-dynamodb-table>"
    encrypt = true
  }
}

resource "random_id" "id" {
  byte_length = 2
}
