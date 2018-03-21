variable "eip_id"		  {
  default = []
}
variable "subnet_id"	{
  default = []
}

variable "subnet_name" {
  default = []
}

variable "name"                 {
  default = "nat_gateway"
}

variable "count" {
  default = 1
}

#variable "depends_on"	{
#	type = "list"
#	default = [ "" ]
#}
