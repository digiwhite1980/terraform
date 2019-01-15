resource "aws_ecr_repository" "repository" {
	name	 = "${var.name}" 
	tags	= "${merge(var.tags,
					map("name", "${var.name}"))}"
}
