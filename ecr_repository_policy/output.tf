output "repository" {
	value = "${aws_ecr_lifecycle_policy.policy.repository}"
}

output "registry_id" {
	value = "${aws_ecr_lifecycle_policy.policy.registry_id}"
}
