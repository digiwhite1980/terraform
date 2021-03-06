variable "type" 				{}

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

variable "source_security_group_id" {
	default = ""
}
