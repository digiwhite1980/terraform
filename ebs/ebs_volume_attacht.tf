resource "aws_volume_attachment" "volume_attach" {
	device_name 	= "${var.device_name}"
	volume_id 		= "${aws_ebs_volume.ebs.id}"
	instance_id 	= "${var.instance_id}"
}