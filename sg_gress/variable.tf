variable "aws_vpc_id"	       {}

variable "sg_name"		       {}

variable "ingress_from_port" {}
variable "ingress_to_port"   {}
variable "ingress_protocol"  {}
variable "ingress_security_groups" {
  default = []
}

variable "egress_from_port" {}
variable "egress_to_port"   {}
variable "egress_protocol"  {}
variable "egress_security_groups" {
  default = []
}

variable "tags" {
  type    = "map"
  default = {}
}

variable "self" {
  default = true
}