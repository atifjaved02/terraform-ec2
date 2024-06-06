resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.name
  }
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
}

variable "name" {
  description = "The name of the VPC"
  type = string
}
