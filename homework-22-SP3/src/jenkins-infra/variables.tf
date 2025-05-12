variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "availability_zone" {
  default = "eu-west-1a"
}
variable "bucket_name" {
  description = "Имя S3-бакета"
  type        = string
  default     = "for-step-s3-sr"
}
variable "instance_type_master" {
  default = "t2.micro"
}

variable "instance_type_worker" {
  default = "t2.micro"
}

variable "ssh_key_name" {
  default = "for-my-hw"
}
