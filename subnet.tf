# resource "aws_subnet" "subnet1" {
#   vpc_id     = aws_vpc.main.id // reference vpc id created above, resource_type.resource_name.attribute
#   cidr_block = "10.0.0.0/24"

#   tags = {
#     Name = "subnet-01"
#   }
# }

# resource "aws_subnet" "subnet2" {
#   vpc_id     = aws_vpc.main.id // reference vpc id created above, resource_type.resource_name.attribute
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "subnet-02"
#   }
# }