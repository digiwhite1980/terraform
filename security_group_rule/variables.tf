variable "type" 				{}

variable "cidr_blocks"		{
	type = "list"
	default = []
}

variable "description" 		{
	default = "Security group rule"
}

variable "from_port" 		{
	default = "0"
}

variable "to_port"			{
	default = "65535"
}

variable "protocol"			{
	default = "all"
}

variable "security_group_id" {}
