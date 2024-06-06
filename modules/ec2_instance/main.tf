resource "aws_instance" "this" {
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = var.security_groups

  root_block_device {
    volume_size = 8
  }

  tags = {
    Name = var.name
  }
}

variable "instance_type" {
  description = "The instance type"
  type = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type = string
}

variable "security_groups" {
  description = "A list of security group names"
  type = list(string)
}

variable "name" {
  description = "The name of the instance"
  type = string
}
