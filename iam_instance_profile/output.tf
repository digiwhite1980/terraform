output "arn" {
  value = "${aws_iam_instance_profile.instance_profile.arn}"
}

# output "create_date" {
#   value = "${aws_iam_instance_profile.instance_profile.create_date}"
# }

output "id" {
  value = "${aws_iam_instance_profile.instance_profile.unique_id}"
}

output "name" {
  value = "${var.name}"
}