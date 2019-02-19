variable "project"			 {}
variable "environment"	 {}

variable "s3_acl"			   {
  default = "private"
}

variable "versioning"     {
  default = false
}

variable "s3_policy"		 {}

variable "bucket"			   {}

variable "force_destroy" {
  default = false
}
