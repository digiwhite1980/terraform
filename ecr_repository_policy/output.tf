output "repository" {
	value = "${aws_ecr_repository_policy.policy.repository}"
}

output "registry_id" {
	value = "${aws_ecr_repository_policy.policy.registry_id}"
}
