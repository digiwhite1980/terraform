variable "peer_owner_id"		{}
variable "peer_vpc_id"			{}
variable "vpc_id"					{}

variable "auto_accept"			{
	default = "true"
}

variable "tags"					{
	type = "map"
	default = {}
}
