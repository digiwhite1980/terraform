variable "key_algorithm"          {
  default = "RSA"
}

variable "private_key_pem"        {}
variable "common_name"            {}
variable "organization"           {}
variable "validity_period_hours"  {
  # Default = 1 year
  default = "8544"
}

variable "allowed_uses"           {
  type = "list"
  default = [
    "digital_signature",
    "any_extended",
    "server_auth",
    "client_auth",
    "timestamping",
    "cert_signing",
    "digital_signature",
    "any_extended"
  ]
}

variable "dns_names"              {
  type    = "list"
  default = []
}

variable "ip_addresses"           {
  type    = "list"
  default = []
}

variable "is_ca_certificate"      {
  default = false
}