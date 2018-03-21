resource "aws_iam_role_policy" "iam_policy" {
	name         = "${var.name}"
  role         = "${var.role}"

  policy       = "${var.policy}"
}