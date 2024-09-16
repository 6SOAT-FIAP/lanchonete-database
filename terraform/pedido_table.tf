resource "aws_dynamodb_table" "pedido" {
 name = "pedido"
 billing_mode = "PROVISIONED"
 read_capacity = 10
 write_capacity = 5

 hash_key = "numeroPedido"
 attribute {
   name = "numeroPedido"
   type = "S"  # String data type
 }

 tags = {
   Name = "pedidosTable"
 }
}