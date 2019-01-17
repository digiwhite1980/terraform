variable "description"  {
  default = "KMS ket generated by Terraform"
}

variable "deletion_window_in_days" {
  default = 10
}

variable "is_enabled" {
  default = true
}

variable "enable_key_rotation" {
  default = false
}

variable "tags" {
  type    = "map"
  default = {}
}