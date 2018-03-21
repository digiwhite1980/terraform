variable "key_algorithm"         {
  default = "RSA"
}

variable "private_key_pem"      {}
variable "common_name"          {}
variable "organization"         {}
variable "organizational_unit"  {}
variable "street_address"       {
  type    = "list"
  default = []
}
variable "locality"             {
  default = ""
}
variable "province"             {
  default = ""
}
variable "country"              {
  default = ""
}
variable "postal_code"          {
  default = ""
}
variable "dns_names"            {
  type = "list"
  default = []
}
variable "ip_addresses"         {
  type = "list"
  default = []
}