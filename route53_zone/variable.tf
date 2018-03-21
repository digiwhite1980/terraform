variable "domain_name"	{}
variable "project"		  {}
variable "environment"	{}

variable "ttl" 	        {
	default = "86400"
}

variable "force_destroy" {
  default = true
}