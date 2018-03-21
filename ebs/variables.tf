variable "availability_zone"	{}
variable "type" {
	default = "standard"
}

variable "encrypted" {
	default = false
}

variable "size"					{}
variable "project"				{}
variable "environment"			{}

########################################################
# Variabled for attaching volume to instance
########################################################
variable "device_name"			{}
variable "instance_id"			{}
variable "instance_name"		{}