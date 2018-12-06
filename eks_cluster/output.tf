output "id" {
	value = "${aws_eks_cluster.eks.id}"
}

output "arn" {
	value = "${aws_eks_cluster.eks.arn}"
}

output "certificate_authority" {
	value = "${aws_eks_cluster.eks.certificate_authority}"
}

output "endpoint" {
	value = "${aws_eks_cluster.eks.endpoint}"
}

output "platform_verion" {
	value = "${aws_eks_cluster.eks.platform_version}"
}

output "version" {
	value = "${aws_eks_cluster.eks.version}"
}
