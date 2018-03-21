output "cert_pem" {
  value = "${tls_self_signed_cert.self_signed_cert.cert_pem}"
}

output "validity_start_time" {
  value = "${tls_self_signed_cert.self_signed_cert.validity_start_time}" 
}

output "validity_end_time" {
  value = "${tls_self_signed_cert.self_signed_cert.validity_end_time}" 
}