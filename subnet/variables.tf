variable "name"                 {
  default = "subnet"
}

variable "project"					    {}
variable "environment"				  {}

variable "vpc_id"					      {}
variable "cidr_block"					  {
  default = {}
}
variable "availability_zone"		{
  default = []
}

variable "map_public_ip"	      { 
	default = false
}