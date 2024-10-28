# Define variables in the root module
variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_tag_name" {
  description = "The name of the VPC."
  type        = string
  default     = "dev-proj-1"
}

variable "cidr_public_subnet" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "cidr_private_subnet" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "eu_availability_zone" {
  description = "List of availability zones."
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}