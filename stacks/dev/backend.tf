terraform {
  backend "s3" {
    bucket         = "padrao-bucket-terraform-state"
    key            = "stacks/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

