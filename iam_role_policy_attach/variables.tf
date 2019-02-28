variable "count" 			{
	default = 1
}

variable "role"			{}

variable "policy_arn"	{
	type = "list"
	default = []
}
