#Subnet group
resource "aws_db_subnet_group" "lanchonete_db_subnet_group" {
  name       = "lanchonete-db-subnet-group"
  subnet_ids = [
    aws_subnet.lanchonete_database_subnet_az_1.id,
    aws_subnet.lanchonete_database_subnet_az_2.id
  ]

  tags = {
    Name = "lanchonete_db_subnet_group"
  }
}

#Security Group
resource "aws_security_group" "lanchonete_db_sg" {
  name        = "lanchonete_db_sg"
  description = "Allow traffic to RDS instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [
      var.cluster_sg_id,
      #      var.lambda_sg_id
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "lanchonete_db_sg"
  }
}

# Database
resource "aws_db_instance" "lanchonete_database" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.35"
  instance_class       = "db.t3.micro"
  identifier           = var.db_identifier
  username             = var.db_username
  password             = var.db_password
  db_name              = var.db_name
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
#  publicly_accessible  = true

  vpc_security_group_ids = [aws_security_group.lanchonete_db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.lanchonete_db_subnet_group.name

  tags = {
    Name = "lanchonete_database"
  }
}