output "repository" {
	value = "${aws_ecr_lifecycle_policy.policy.repository}"
}

output "policy" {
	value = "${aws_ecr_lifecycle_policy.policy.registry_id}"
}
