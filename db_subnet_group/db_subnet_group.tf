resource "aws_db_subnet_group" "db_subnet_group" {
	name			    = "${var.db_name}"

	subnet_ids		= [ "${var.db_subnet_ids}"]

	tags {
		Name 		    = "${var.project}_${var.environment}_${var.db_name}"
		Environment = "${var.environment}"
	}
}