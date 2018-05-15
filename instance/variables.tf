variable "environment"			    {}
variable "aws_subnet_id"		    {}

variable "availability_zone"	  {}

variable "ssh_user"				      {}
variable "ssh_name_key"			    {}
variable "ssh_pri_key"			    {}

variable "security_groups_ids"	{
	type = "list"
}

variable "count" {
  default = "1"
}

####################################
# Root disk vars
####################################
variable "root_block_device_size" {
	default = "8"
}

variable "root_block_device_type" {
	default = "gp2"
}

variable "root_block_device_delete" {
	default = true
}
####################################

variable "region" 				      {}
variable "aws_ami" 				      {}
variable "aws_instance_type" 	  {}

variable "associate_public_ip_address" {
	default = false
}

variable "user_data_base64"     {
  default = ""
}

variable "instance_name"		    {}

variable "private_ip"			      {
  default = ""
}

variable "connection_agent"     {
	default = false
}

variable "iam_instance_profile" {
  default = ""
}

variable "tags" {
  type = "map"
  default = {}
}