resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr // var.variable_name
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name_tag
    Course = "terraform"
    Batch = "b12"
    Timings = "7-9"
  }
}

// i want to pass the vpc cidr as the  variable
// syntax to declare a variable

variable "vpc_cidr" {
  description = "enter the vpc cidr block value"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name_tag" {
  description = "enter the vpc name tag value"
  type        = string
  default = "vpc-demo"
  
}

// variable "variable_name"{}
// everrything insode the resource block is configuration is optional
# resource "resource_type" "resource_name" {
#   # Configuration options
# }

// resource name can be anything you want,but give some
// meaning full name to identify the resource
// resource type is aws_vpc,aws_subnet,aws_instance etc
// resource block is start with resource keyword
// you should not change the resource type
// ctrl + / to comment multiple lines, press same again to uncomment


// for a best practice make sure you have unique resource names
// across your terraform codebase
