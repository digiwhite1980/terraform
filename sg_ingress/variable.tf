variable "aws_vpc_id"	{}

variable "sg_name"		{}

variable "from_port"	{
  default = []
}
variable "to_port"		{
  default = []
}
variable "protocol"		{
  default = []
}

variable "cidr_blocks" {
	type = "list"
}

variable "self" {
  default = false
}

variable "tags" {
  type = "map"
  default = {}
}