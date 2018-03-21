#############################################################
# Output default variables which are taken as input
#############################################################

output "region" {
	value = "${var.region}"
}

output "domain_name" {
	value = "${var.domain_name}"
}

output "project" {
	value = "${var.project}"
}

output "environment" {
	value = "${var.environment}"
}

output "aws_region" {
	value = "${var.aws_region}"
}

output "aws_ami" {
	value = "${var.aws_ami}"
}

output "aws_azs" {
	value = "${var.aws_azs}"
}

output "ssh_pri_key" {
	value = "${var.ssh_pri_key}"
}

output "ssh_pub_key" {
	value = "${var.ssh_pub_key}"
}

output "chef_version" {
	value = "${var.chef_version}"
}

#############################################################
# Output genereted ID's to be used by other modules
#############################################################

output "aws_vpc_id" {
	value = "${aws_vpc.vpc.id}"
}

output "aws_gateway_id" {
	value = "${aws_internet_gateway.internet_gateway.id}"
}

output "aws_route_table_id" {
	value = "${aws_route.route.route_table_id}"
}
