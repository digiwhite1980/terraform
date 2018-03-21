resource "aws_route53_record" "alias" {
	zone_id 					= "${var.route53_zone_id}"
	name 						= "${var.domain_name}"
	type 						= "A"

	alias {
		name 					= "${var.elb_dns_name}"
		zone_id					= "${var.elb_zone_id}"
		evaluate_target_health	= true
	}
}
