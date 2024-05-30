variable "bucket_name" {
  type = string
}

variable "cidr" {
  type = string
}
variable "vpc_name" {
  type = string
}
variable "public_subnet_cidr" {
  type = string
}
variable "public_subnet_name" {
  type = string
}

## iam variables
variable "role_name" {
  type = string

} 
