variable "aws_vpc_id"	{}

variable "sg_name"		{}

variable "ingress" {
  type    = "list"
  default = []
}

variable "tags" {
  type = "map"
  default = {}
}