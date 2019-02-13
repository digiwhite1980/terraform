variable "vpc_id"		   {}
#variable "cidr_block"		{}
#variable "gateway_id"		{}

variable "route"				{
	type = "list"
}

variable "name" 		{
	default = "Route_table"
}

variable "project"			{}
variable "environment"		{}
