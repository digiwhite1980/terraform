variable "vpc_id"		   {}
variable "cidr_block"		{}
variable "vpc_peering_connection_id"		{}
variable "count" {
  default = 1
}

variable "name" 		{
	default = "Route_table"
}

variable "project"			{}
variable "environment"		{}
