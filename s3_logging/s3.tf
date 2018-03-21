resource "aws_s3_bucket" "s3" {
	bucket 				= "${var.bucket}"
	acl 				= "${var.s3_acl}"

	logging {
		target_bucket	= "${var.target_bucket}"
		target_prefix	= "${var.target_prefix}"
	}

	tags {
		Name 			= "${var.project}_${var.environment}"
		Environment		= "${var.environment}"
	}
}
