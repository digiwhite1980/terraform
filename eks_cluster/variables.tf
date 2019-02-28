variable "name" 		{}
variable "role_arn"	{}

variable "version"	{
	default = ""
 }

variable "security_group_ids" {
	type = "list"
	default = []
}

variable "subnet_ids" {
	type = "list"
	default = []
}
