##################################################################################
# VARIABLES
##################################################################################

variable "aws_region" {
    description = "AWS Region"
    type    = string
}

variable "vpc_cidr_block" {
    description = "Main VPC CIDR Block"
    type    = string
}

variable "az_public_subnet" {
  type = list(any)
}

variable "az_private_subnet" {
  type = list(any)
}

variable "az_database_subnet" {
  type = list(any)
}

variable "availability_zone" {
  type = list(string)
}
