variable "bucket"        {}

variable "s3_acl"        {
  default = "private"
}

variable "s3_policy"     {}

variable "force_destroy" {
  default = false
}

variable "tags" {
  type = "map"
  default = {}
}

variable "server_side_encryption_configuration" {
  type = "map"
  default = {}
}