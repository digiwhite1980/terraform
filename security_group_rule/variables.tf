variable "cidr_blocks"		{
	type = "list"
	default []
}

varaible "description" 		{
	deault = "Security group rule"
}

varaible "from_port" 		{
	default = "0"
}

varaible "to_port"			{
	default = "65535"
}

variable "protocol"			{
	default = "all"
}

varaible "security_group_id" {}
