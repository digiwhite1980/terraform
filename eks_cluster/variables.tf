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

# Dumy var we created to make sure EKS waits for role bindings to finish
variable "role_dependencies" {
	type = "list"
	default = []
}
