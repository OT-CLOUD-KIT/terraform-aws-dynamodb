terraform {
  backend "s3" {
    bucket = "ot-cloud-kit-bucket"
    key    = "ot/module/DynomoDB/terraform.tfstate"
    region = "us-east-1"

  }
}