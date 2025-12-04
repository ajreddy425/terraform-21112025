# resource "aws_route_table_association" "sub1_asso" {
#   subnet_id      = aws_subnet.subnet1.id
#   route_table_id = aws_route_table.pub_route_table.id
# }

# # resource "aws_route_table_association" "sub2_asso" {
# #   subnet_id      = aws_subnet.subnet2.id
# #   route_table_id = aws_route_table.route_table.id
# # }