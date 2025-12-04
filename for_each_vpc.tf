# variable "vpc_cidrs" {
#   default = {
#     cidr1 = "172.16.0.0/16"
#     cidr2 = "192.168.0.0/16"  // key = value
#   }

# }


# resource "aws_vpc" "fordemo" {
#   for_each   = var.vpc_cidrs
#   cidr_block = each.value

#   tags = {
#     Name = each.key
#   }
# }
