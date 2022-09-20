terraform {
  backend "s3" {
    region = "us-east-2"
    bucket = "k8sclass-tf-state-mush"
    key = "network/terraform.tfstate"
  }
}
