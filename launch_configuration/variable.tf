variable "instance_type"                {}
variable "image_id"                     {}
variable "spot_price"                   {}
variable "name_prefix"                  {}
variable "iam_instance_profile"         {}

variable "user_data_base64"             {
  default = ""
}

variable "key_name"                     {}
variable "security_groups"              {
  type = "list"
}

variable "associate_public_ip_address"  {
	default = false
}

variable "create_before_destroy"        {
  default = true
}

variable "volume_type"                  {
  default = "gp2"
}
variable "volume_size"                  {
  default = "50"
}
variable "ebs_optimized"                {
  default = true
}
variable "delete_on_termination"        {
  default = true
}