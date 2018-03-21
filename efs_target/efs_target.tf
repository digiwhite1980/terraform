resource "aws_efs_mount_target" "efs_target" {
	file_system_id	  = "${var.file_system_id}"
  count             = "${var.mount_count}"
	security_groups	  = [ "${var.security_groups}" ]

  subnet_id         = "${var.subnet_ids[count.index]}"
}
