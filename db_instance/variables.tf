variable "db_instance_class" 			{
	default = "db.m1.small"
}

variable "db_allocated_storage" 	{
	default = 5
}

variable "db_storage_type" 				{
	default = "gp2"
}

variable "db_engine" 							{
	default = "mysql"
}

variable "db_engine_version"			{}

variable "db_name" 								{
	default = "mydb"
}

variable "apply_immediately"			{
	default = false
}

variable "db_username" 						{
	default = "mydb"
}

variable "db_password" 						{
	default = "mydb"
}

variable "db_port" 								{
	default = 3306
}

variable "db_publicly_accessible" {
	default = false
}

variable "db_multi_az" 						{
	default = false
}

variable "db_subnet_group_name" 	{
	default = "mydb"
}

variable "db_vpc_security_group_ids" {
	type = "list"
}

variable "internal" {
	default = false
}

variable "preferred_maintenance_window" {
	default = "03:00 05:00"
}

variable "tags" 									{
   type = "map"
	default = {}
}
