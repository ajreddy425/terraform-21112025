data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

data "aws_regions" "current" {}

# output "region_name" {
# value = data.aws_regions.current.names  
# }


data "aws_region" "current" {}

output "region_name_current" {
  value = data.aws_region.current.name
}

output "vpc_id" {
  value = aws_vpc.main.id

}

# output "igw_id" {
#     value = aws_internet_gateway.gw.id

# }

data "aws_availability_zones" "available" {
  state = "available"
}

output "list_of_azs" {
  # value = data.aws_availability_zones.available.names
  value = local.l_azs

}

output "count_of_azs" {
  # value = length(data.aws_availability_zones.available.names)
  value = local.c_azs

}


