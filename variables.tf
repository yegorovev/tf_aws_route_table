variable "vpc_id" {
  description = "VPC ID"
  type        = string
  nullable    = false
}

variable "name" {
  description = "Route table name"
  type        = string
  nullable    = false
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  nullable    = true
}

variable "gateway_id" {
  description = "Gateway id"
  type        = string
  nullable    = true
}
