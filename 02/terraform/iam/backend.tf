terraform {
  backend "s3" {
    profile = "free-aws"
    region = "us-east-2"
    bucket = "k8sclass-tf-state-mush"
    key = "iam/terraform.tfstate"
  }
}
