resource "tls_cert_request" "cert_request" {
  	key_algorithm      = "${var.key_algorithm}"
    private_key_pem    = "${var.private_key_pem}"

    subject {
      common_name         = "${var.common_name}"
      organization        = "${var.organization}" 
      # organizational_unit = "${var.organizational_unit}"
      # street_address      = [ "${var.street_address}" ]
      # locality            = "${var.locality}"
      # province            = "${var.province}"
      # country             = "${var.country}"
      # postal_code         = "${var.postal_code}"
    }

    dns_names          = [ "${var.dns_names}" ]
    ip_addresses       = [ "${var.ip_addresses}" ]
}