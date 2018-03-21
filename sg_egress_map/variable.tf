variable "aws_vpc_id"	{}

variable "sg_name"		{}

variable "egress" {
  type    = "list"
  default = []
}

variable "tags" {
  type = "map"
  default = {}
}