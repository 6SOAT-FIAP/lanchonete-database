# AWS provider configuration
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "sa-east-1"
}

variable "arn_aws_lab_role" {
  description = "ARN for the IAM role"
  type        = string
  default     = "arn:aws:iam::578360598759:role/role-adm"
}

# VPC configuration
variable "vpc_id" {
  description = "VPC ID - VPC Created in the infrastructure repo"
  type        = string
  default     = "vpc-09dc9133db63e0010"
}

variable "subnet_database_1_cidr_block" {
  description = "CIDR block for the database subnet"
  type        = string
  default     = "10.0.5.0/24"
}

variable "subnet_database_2_cidr_block" {
  description = "CIDR block for the database subnet"
  type        = string
  default     = "10.0.6.0/24"
}

variable "subnet_availability_zone_az_1" {
  description = "Availability zone for the subnets"
  type        = string
  default     = "sa-east-1a"
}

variable "subnet_availability_zone_az_2" {
  description = "Availability zone 2 for the subnets"
  type        = string
  default     = "sa-east-1b"
}

# Database configuration
variable "db_username" {
  description = "The username for the RDS instance"
  type        = string
  sensitive   = true
  default     = "root"
}

variable "db_password" {
  description = "The password for the RDS instance"
  type        = string
  sensitive   = true
  default     = "rootPass123456"
}

variable "db_name" {
  description = "Security Group ID for the Lambda"
  type        = string
  default     = "lanchonete_db"
}

variable "db_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
  default     = "lanchonete-db"
}

# Lambda configuration
#variable "lambda_sg_id" {
#  description = "Security Group ID for the Lambda"
#  type        = string
#}

# EKS configuration
variable "cluster_sg_id" {
  description = "Security Group ID for the EKS Cluster"
  type        = string
  default     = "sg-08c8fb32efac379f5"
}