output "id" {
	value = "${aws_route53_zone.route53.id}"
}

output "name_servers" {
	value = "${aws_route53_zone.route53.name_servers}"
}