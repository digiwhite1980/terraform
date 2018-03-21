output "db_id" {
	value = "${aws_db_instance.db.id}"
}

output "db_address" {
	value = "${aws_db_instance.db.address}"
}

output "db_availabiltizone" {
	value = "${aws_db_instance.db.availabilityzone}"
}

output "db_endpoint" {
	value = "${aws_db_instance.db.endpoint}"
}

output "db_status" {
	value = "${aws_db_instance.db.status}"
}