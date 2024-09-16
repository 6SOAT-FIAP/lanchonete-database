resource "aws_dynamodb_table" "produto" {
  name           = "produto"
  billing_mode   = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 5

  hash_key = "id"
  attribute {
    name = "id"
    type = "S"  # String data type
  }

  tags = {
    Name = "produtosTable"
  }
}