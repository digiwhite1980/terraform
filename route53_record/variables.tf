variable "zone_id"	        {}
variable "ttl"		          {
  default = 86400
}
variable "name" 	          {}
variable "type"				      {
  default = "A"
}

variable "records"		      {
	type = "list"
}
