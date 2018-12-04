variable "peer_owner_id"		{}
variable "peer_vpc_id"			{}
variable "vpc_id"					{}
variable "peer_region"			{}

variable "auto_accept"			{
	default = "true"
}

variable "allow_remote_vpc_dns_resolution" {
	default = "true"
}

variable "tags"					{
	type = "map"
	default = {}
}
