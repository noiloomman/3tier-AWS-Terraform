aws_region = "ap-southeast-1"

vpc_cidr_block = "10.0.0.0/16"

az_public_subnet1 = {
  default : "10.0.0.0/24",
}

az_public_subnet2 = {
  default : "10.0.1.0/24"
}
az_private_subnet1 = {
  default : "10.0.101.0/24",
 }
az_private_subnet2 = {
  default : "10.0.102.0/24"
}
az_database_subnet1 = {
  default : "10.0.201.0/24",
}
az_database_subnet2 = {
  default : "10.0.202.0/24"
}

availability_zones = [
  "ap-southeast-1a",
  "ap-southeast-1b" 
]