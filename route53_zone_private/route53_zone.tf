resource "aws_route53_zone" "route53" {
  name           = "${var.domain_name}"

  vpc         =  [ "${var.vpc_id}" ]
  
  force_destroy  = "${var.force_destroy}"

  tags {
	 Environment    = "${var.environment}"
	 Name           = "${var.project}_${var.environment}"
  }
}

resource "aws_route53_record" "route53_record" {
  zone_id       = "${aws_route53_zone.route53.zone_id}"
  name          = "${var.domain_name}"
  type          = "NS"
  ttl           = "${var.ttl}"
  records = [
    "${aws_route53_zone.route53.name_servers.0}",
    "${aws_route53_zone.route53.name_servers.1}",
    "${aws_route53_zone.route53.name_servers.2}",
    "${aws_route53_zone.route53.name_servers.3}"
  ]
}
