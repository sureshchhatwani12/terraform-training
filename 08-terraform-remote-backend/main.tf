terraform {
  backend "s3" {
    bucket = "terraformstate-demo-0158491b" # sed -i 's/terraformstate-demo-0158491b/'"${S3NAME}"'/g' main.tf
    key    = "poc/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-demo-state-lock"
    encrypt        = true
  }
}

resource "local_file" "pet" {
  filename = "/home/development/terraform-training/08-terraform-remote-backend"
  content = "Hello from remote state"
}