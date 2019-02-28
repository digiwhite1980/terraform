resource "aws_iam_role_policy_attachment" "policy" {
	count			= "${length(var.policy_arn)}"

	role 			= "${var.role}"
	policy_arn 	= "${element(var.policy_arn, count.index)}"
}
