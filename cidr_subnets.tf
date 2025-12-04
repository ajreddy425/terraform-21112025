# resource "aws_subnet" "sub1" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index) // dynamically create subnet cidr from vpc cidr
#   availability_zone = local.l_azs[count.index]
#   count             = local.c_azs

#   tags = {
#     Name = "pub_subnet-${count.index + 1}-${local.ws}"
#   }

# }

# resource "aws_subnet" "sub2" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index + local.c_azs) // dynamically create subnet cidr from vpc cidr
#   availability_zone = local.l_azs[count.index]
#   count             = local.c_azs

#   tags = {
#     Name = "pri_subnet-${count.index + 1}-${local.ws}"
#   }

# }