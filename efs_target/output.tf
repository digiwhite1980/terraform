output "id" {
	value = [
    "${aws_efs_mount_target.efs_target.*.id}"
  ]
}

output "dns_name" {
	value = [
    "${aws_efs_mount_target.efs_target.*.dns_name}"
  ]
}

output "network_interface_id" {
	value = [
    "${aws_efs_mount_target.efs_target.*.network_interface_id}"
  ]
}

output "ip_address" {
	value = [
    "${aws_efs_mount_target.efs_target.*.ip_address}"
  ]
}