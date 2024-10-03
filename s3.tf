terraform {
  backend "s3" {
    bucket = "lanchonete-bucket"
    key    = "database.tfstate"
    region = "sa-east-1"
  }
}