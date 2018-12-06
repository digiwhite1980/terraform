variable "name" 		{}
variable "role_arn"	{}

varaible "version"	{
	default = ""
 }

variable "subnet_ids" {
	type = "list"
	default = []
}
