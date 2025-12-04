# resource "aws_instance" "web1" {
#   ami                         = "ami-0fa3fe0fa7920f68e"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   count                       = 2
#   key_name                    = "terraform-1711"
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   subnet_id                   = element(aws_subnet.sub1.*.id, count.index)
#   availability_zone           = local.l_azs[count.index]
#   depends_on                  = [aws_security_group.all_sg]
#   user_data                   = file("./scripts/apache1.sh")

#   tags = {
#     Name = "ec2-web1-${count.index + 1}-${terraform.workspace}"
#   }
# }

# // sg creation
# resource "aws_security_group" "all_sg" {
#   name        = "all_sg"
#   description = "Allow inbound and outbound traffic"
#   vpc_id      = aws_vpc.main.id

#   # ✅ Inbound (Ingress)
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # allow SSH from anywhere
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # allow HTTP from anywhere
#   }

#   # ✅ Outbound (Egress)
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"] # allow all outbound IPv4
#     ipv6_cidr_blocks = ["::/0"]      # allow all outbound IPv6
#   }

#   tags = {
#     Name = "all-sg-${terraform.workspace}"
#   }
# }


