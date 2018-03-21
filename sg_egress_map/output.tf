output "id" {
  value = [
    "${aws_security_group.egress.*.id}"
  ]
}

output "name" {
  value = [
    "${aws_security_group.egress.*.name}"
  ]
}