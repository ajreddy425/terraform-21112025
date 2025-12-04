# resource "aws_nat_gateway" "ngw" {
#   allocation_id = aws_eip.eip_allow.id
#   subnet_id     = aws_subnet.subnet1.id

#   tags = {
#     Name = "gw-NAT-${terraform.workspace}"
#   }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
# #   depends_on = [aws_internet_gateway.example]
# }


# resource "aws_eip" "eip_allow" {
# #   instance = aws_instance.web.id
#   domain   = "vpc"
# }

