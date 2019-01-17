resource "aws_s3_bucket" "s3_options" {
  bucket        = "${lower(var.bucket)}"
  acl           = "${var.s3_acl}"

  policy        = "${var.s3_policy}"

  force_destroy = "${var.force_destroy}"

  tags          = "${var.tags}"

  server_side_encryption_configuration = "${var.server_side_encryption_configuration}"
}
