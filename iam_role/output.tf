output "id" {
  value = "${aws_iam_role.iam_role.id}"
}

output "arn" {
  value = "${aws_iam_role.iam_role.arn}"
}

# output "assume_role_policy_document" {
#   value = "${aws_iam_role.iam_role.assume_role_policy_document}"
# }

output "name" {
  value = "${var.name}"
}

output "path" {
  value = "${aws_iam_role.iam_role.path}"
}

output "role_id" {
  value = "${aws_iam_role.iam_role.unique_id}"
}