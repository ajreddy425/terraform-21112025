resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr // var.variable_name
  instance_tenancy = "default"
  lifecycle {
    # prevent_destroy = true
  }

  tags = {
    Name    = "${var.vpc_name_tag}-${local.ws}" // to append workspace name to the vpc name tag
    Course  = "terraform"
    Batch   = "b12"
    Timings = "7-9"
  }
}

# vpc-077f5f1c5e1c2b7be
# resource "aws_vpc" "con_vpc" {
#   cidr_block       = "172.31.0.0/16"
#   instance_tenancy = "default"
#   # count = local.c_azs == 5 ? 1 : 0
#   count = terraform.workspace == "default" ? 1 : 0
#   tags = {
#     Name = "con_vpc-${local.ws}"
#   }

# }

// resource name can be anything you want,but give some
// meaning full name to identify the resource
// resource type is aws_vpc,aws_subnet,aws_instance etc
// resource block is start with resource keyword
// you should not change the resource type
// ctrl + / to comment multiple lines, press same again to uncomment


// for a best practice make sure you have unique resource names
// across your terraform codebase
