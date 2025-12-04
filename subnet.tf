# resource "aws_subnet" "subnet1" {
#   vpc_id     = aws_vpc.main.id // reference vpc id created above, resource_type.resource_name.attribute
#   cidr_block = "10.0.0.0/24"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "pub_subnet-01-${local.ws}"
#   }
# }

# resource "aws_subnet" "subnet2" {
#   vpc_id     = aws_vpc.main.id // reference vpc id created above, resource_type.resource_name.attribute
#   cidr_block = "10.0.1.0/24"
#   availability_zone = "us-east-1b"

#   tags = {
#     Name = "pri_subnet-01-${local.ws}"
#   }
# }
