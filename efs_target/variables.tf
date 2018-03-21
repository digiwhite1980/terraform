variable "file_system_id"	 {}
variable "subnet_ids"		   {
	type = "list"
  default = []
}

variable "mount_count"     {
  default = 3
}

variable "security_groups" {
	type = "list"
}
