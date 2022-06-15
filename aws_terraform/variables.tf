##################################################################################
# VARIABLES
##################################################################################

variable "aws_region" {
    description = "AWS Region"
    type    = list(string)
}

variable "vpc_cidr_block" {
    description = "Main VPC CIDR Block"
    type    = list(string)
}

variable "az_public_subnet" {
  type = map(string)
}

variable "az_private_subnet" {
  type = map(string)
}

variable "az_database_subnet" {
  type = map(string)
}

variable "availability_zone" {
  type = list(string)
}