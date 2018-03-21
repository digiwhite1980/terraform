output "arn" {
  value = "${aws_elasticsearch_domain.es.arn}"
}

output "domain_id" {
  value = "${aws_elasticsearch_domain.es.domain_id}"
}

output "endpoint" {
  value = "${aws_elasticsearch_domain.es.endpoint}"
}

output "domain_name" {
  value = "${var.domain_name}"
}