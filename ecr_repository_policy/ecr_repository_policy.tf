resource "aws_ecr_repository_policy" "policy" {
	repository	= "${var.repository}"

	policy		= "${var.policy}"
}
