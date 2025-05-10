variable "vpc_id" {
  description = "ID VPC where the resources will be created"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet in which EC2 will be created"
  type        = string
}

variable "login_name" {
  description = "Your login name to be used for S3 state path"
  type        = string
}
