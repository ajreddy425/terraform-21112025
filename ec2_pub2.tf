# resource "aws_instance" "web2" {
#   ami                         = "ami-0fa3fe0fa7920f68e"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "terraform-1711"
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   subnet_id                   = aws_subnet.subnet2.id

#   tags = {
#     Name = "ec2-web2-${terraform.workspace}"
#   }
# }
