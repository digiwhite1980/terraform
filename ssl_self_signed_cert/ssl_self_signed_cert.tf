resource "tls_self_signed_cert" "self_signed_cert" {
  key_algorithm         = "${var.key_algorithm}"
  private_key_pem       = "${var.private_key_pem}"

  subject {
    common_name         = "${var.common_name}"
    organization        = "${var.organization}"
  } 

  validity_period_hours = "${var.validity_period_hours}"

  allowed_uses          = [ "${var.allowed_uses}" ]

  dns_names             = [ "${var.dns_names}" ]
  ip_addresses          = [ "${var.ip_addresses}" ]

  is_ca_certificate     = "${var.is_ca_certificate}"
}