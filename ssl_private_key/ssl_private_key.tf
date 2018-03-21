resource "tls_private_key" "private_key" {
  algorithm   = "${var.algorithm}"
  ecdsa_curve = "${var.ecdsa_curve}"
  rsa_bits    = "${var.rsa_bits}"
}