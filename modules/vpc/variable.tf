variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone" {
  description = "AWS Availability Zone"
  type        = string
}

variable "name" {
  description = "Name prefix for resources"
  type        = string
}
