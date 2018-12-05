variable "project"			{}
variable "environment"		{}
variable "vpc_cidr"			{}

variable "enable_dns_support"	{
	default = true
}

variable "enable_dns_hostnames" {
	default = false
}

variable "tags" {
	type = "map"
	value = {}
}
