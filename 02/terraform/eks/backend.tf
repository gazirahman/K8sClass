terraform {
  backend "s3" {
    region = "us-east-2"
    bucket = "k8sclass-tf-state-mush"
    key    = "eks/terraform.tfstate"
  }
}
