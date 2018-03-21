output "id" {
  value = [
    "${aws_security_group.ingress.*.id}"
  ]
}

output "name" {
  value = [
    "${aws_security_group.ingress.*.name}"
  ]
}