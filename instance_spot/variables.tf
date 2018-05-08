variable "environment"			    {}
variable "aws_subnet_id"		    {}

variable "spot_price"           {}
variable "spot_type"            {
  default = "persistent"
}
variable "wait_for_fulfillment" {
  default = false
}

variable "availability_zone"	  {}

variable "ssh_user"				      {}
variable "ssh_name_key"			    {}
variable "ssh_pri_key"			    {}

variable "security_groups_ids"	{
	type = "list"
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

variable "count" {
  default = "1"
}

variable "region" 				      {}
variable "aws_ami" 				      {}
variable "aws_instance_type" 	  {}

variable "associate_public_ip_address" {
		default = false
}

variable "user_data_base64"     {}

variable "instance_name"		    {}
variable "private_ip"			      {}

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