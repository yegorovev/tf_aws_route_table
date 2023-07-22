variable "vpc_id" {
  description = "VPC ID"
  type        = string
  nullable    = false
}

variable "route_tables" {
  description = "List of route tables"
  type        = list(map(string))
  default     = []
}
