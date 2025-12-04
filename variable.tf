// i want to pass the vpc cidr as the  variable
// syntax to declare a variable

variable "vpc_cidr" {
  description = "enter the vpc cidr block value"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name_tag" {
  description = "enter the vpc name tag value"
  type        = string
  default     = "vpc-demo"

}

// variable "variable_name"{}
// everrything insode the resource block is configuration is optional
# resource "resource_type" "resource_name" {
#   # Configuration options
# }
