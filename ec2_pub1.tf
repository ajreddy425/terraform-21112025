# resource "aws_instance" "web1" {
#   ami                         = "ami-0fa3fe0fa7920f68e"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   count                       = 1
#   key_name                    = "terraform-1711"
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   subnet_id                   = element(aws_subnet.sub1.*.id, count.index)
#   availability_zone           = local.l_azs[count.index]
#   depends_on                  = [aws_security_group.all_sg]
#   user_data                   = file("./scripts/apache1.sh")

#   provisioner "local-exec" {
#     command = "echo ${aws_instance.web1.*.public_ip[count.index]} >> ip_web1.txt"
    
#   }

# provisioner "remote-exec" {
#   inline = [
#     "sudo yum update -y",
#     "sudo yum install -y httpd",
#     "sudo service start httpd",
#     "sudo systemctl enable httpd",
#     "echo '<h1>Welcome to Web Server 1 - ${terraform.workspace}</h1>' | sudo tee /var/www/html/index.html"
#   ]

#   connection {
#     type        = "ssh"
#     user        = "ec2-user"
#     private_key = file("~/.ssh/terraform-1711.pem")
#     host        = aws_instance.web1[count.index].public_ip
#   }
# }

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


