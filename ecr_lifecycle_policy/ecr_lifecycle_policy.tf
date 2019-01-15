resource "aws_ecr_lifecycle_policy" "policy" {
	repository	= "${var.repository}"

	policy		= "${var.policy}"
}
