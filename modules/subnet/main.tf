resource "aws_subnet" "this" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
  availability_zone = var.availability_zone
  tags = {
    Name = var.name
  }
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet"
  type = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type = string
}

variable "name" {
  description = "The name of the subnet"
  type = string
}
