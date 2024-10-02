terraform {
  backend "s3" {
    bucket = "lanchonete-bucket"
    key    = "lanchonete-bucket/database.tfstate"
    region = "sa-east-1"
  }
}