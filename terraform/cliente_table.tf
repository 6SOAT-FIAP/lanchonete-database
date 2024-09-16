resource "aws_dynamodb_table" "cliente" {
 name = "cliente"
 billing_mode = "PROVISIONED"
 read_capacity = 10
 write_capacity = 5

 hash_key = "cpf"
 attribute {
   name = "cpf"
   type = "S"  # String data type
 }

 tags = {
   Name = "clientesTable"
 }
}