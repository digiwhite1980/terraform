resource "aws_s3_bucket" "s3" {
	bucket 			  = "${lower(var.bucket)}"
	acl 			    = "${var.s3_acl}"

	policy			  = "${var.s3_policy}"

  force_destroy = "${var.force_destroy}"

	tags {
		Name 		    = "${var.project}_${var.environment}"
		Environment	= "${var.environment}"
	}
}
