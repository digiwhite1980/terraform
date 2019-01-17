output "bucket" {
  value = "${var.bucket}"
}

output "id" {
  value = "${aws_s3_bucket.s3_options.id}"
}

output "arn" {
  value = "${aws_s3_bucket.s3_options.arn}"
}

output "bucket_domain_name" {
  value = "${aws_s3_bucket.s3_options.bucket_domain_name}"
}