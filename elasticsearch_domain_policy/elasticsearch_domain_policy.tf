resource "aws_elasticsearch_domain_policy" "es" {
  domain_name       = "${var.domain_name}"

  access_policies   = "${var.policies}"
}