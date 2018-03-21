resource "aws_efs_file_system" "efs" {
	creation_token 	= "${var.project}_${var.environment}"

	tags {
		Name 		= "${var.project}_${var.environment}"
		Environment	= "${var.environment}"
	}
}
