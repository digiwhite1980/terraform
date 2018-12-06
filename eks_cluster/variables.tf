variable "name" 		{}
variable "role_arn"	{}

varaible "version"	{
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
