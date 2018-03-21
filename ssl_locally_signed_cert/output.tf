output "cert_pem" {
  value = "${tls_locally_signed_cert.signed_cert.cert_pem}"
}

output "validity_start_time" {
  value = "${tls_locally_signed_cert.signed_cert.validity_start_time}"
}

output "validity_end_time" {
  value = "${tls_locally_signed_cert.signed_cert.validity_end_time}"
}