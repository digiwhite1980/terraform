variable "environment"			{}
variable "aws_subnet_id"		{}

variable "availability_zone"	{}

variable "ssh_user"				{}
variable "ssh_name_key"			{}
variable "ssh_pri_key"			{}

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

variable "region" 				{}
variable "aws_ami" 				{}
variable "aws_instance_type" 	{}

variable "instance_name"		{}
variable "private_ip"			{}

variable "associate_public_ip_address" {
		default = false
}

variable "chef_organization"	{}
variable "chef_runlist"			{}
variable "chef_version"			{}

variable "chef_client_name"	{
	default = "digiwhite"
}

variable "chef_key"	{
	default = "digiwhite.pem"
}

variable "connection_agent" {
	default = false
}

variable "tags" {
  type = "map"
  default = {}
}