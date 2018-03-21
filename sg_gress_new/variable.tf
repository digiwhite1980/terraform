variable "aws_vpc_id"	       {}

variable "sg_name"		       {}

variable "ingress"           {
  type = "list"
}

variable "egress"            {
  type = "list"
}

variable "tags" {
  type    = "map"
  default = {}
}