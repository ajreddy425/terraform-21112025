locals {
  l_azs = data.aws_availability_zones.available.names
  c_azs = length(data.aws_availability_zones.available.names)
  ws    = terraform.workspace
}


