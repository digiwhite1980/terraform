#############################################################
# Output default variables which are taken as input
#############################################################

output "domain_name" {
	value = "${var.domain_name}"
}

output "project" {
	value = "${var.project}"
}

output "environment" {
	value = "${var.environment}"
}

#############################################################
# Output genereted ID's to be used by other modules
#############################################################

output "aws_vpc_id" {
	value = "${aws_vpc.vpc.id}"
}
