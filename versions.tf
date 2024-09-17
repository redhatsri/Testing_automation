variable "account_id" {
  description = "AWS account id"
}

variable "access_log_bucket" {
  description = "S3 log bucket for access"
}

variable "env" {
  description = "Application environment"
}

variable "app" {
  description = "Application name"
}

variable "assume_role_arn" {
  type        = string
  description = "Assume Role ARN"
}

variable "assume_role_external_id" {
  type        = string
  description = "Assume Role external ID"
  sensitive   = true
}

variable "subnet_id_1" {
  type        = string
  description = "Subnet ID 1"
}

variable "subnet_id_2" {
  type        = string
  description = "Subnet ID 2"
}

variable "subnet_id_3" {
  type        = string
  description = "Subnet ID 3"
}
