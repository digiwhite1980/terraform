resource "aws_eks_cluster" "eks" {
	name			= "${var.name}"
	role_arn 	= "${var.role_arn}"

	version 		= "${var.version}"

	vpc_config {
		subnet_ids = [ "${var.subnet_ids}" ]
	}
}
