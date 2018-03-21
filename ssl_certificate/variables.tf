####################################################################
# dont forget to use dos2unix on certificate file in order
# to remove ^M from end of line. If not this will re-initiate 
# a new resource after every plan
####################################################################
variable "name_prefix"			     {}
variable "ssl_crt"				       {}
variable "ssl_key"				       {}
variable "certificate_chain"     {
  default = ""
}

variable "path"                  {
  default = "/"
}

variable "create_before_destroy" {
	default = true
}

variable "ignore_changes"        {
	default = []
}