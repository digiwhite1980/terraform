resource "aws_iam_policy" "policy" {
	role 			= "${var.role}"
	policy_arn 	= "${var.policy_arn}"
}
