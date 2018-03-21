variable "cert_request_pem"     {}
variable "ca_key_algorithm"     {
  default = "RSA"
}

variable "ca_private_key_pem"   {}
variable "ca_cert_pem"          {}

variable "validity_period_hours"  {
  default = "8544"
}

variable "allowed_uses"         {
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