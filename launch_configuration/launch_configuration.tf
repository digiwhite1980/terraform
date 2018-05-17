resource "aws_launch_configuration" "launch_configuration" {
	name_prefix			     = "${var.name_prefix}"

	image_id			       = "${var.image_id}"
  instance_type        = "${var.instance_type}"
  spot_price           = "${var.spot_price}"
  iam_instance_profile = "${var.iam_instance_profile}"

  user_data_base64      = "${var.user_data_base64}"
  key_name              = "${var.key_name}"

  security_groups       = [ "${var.security_groups}" ]

  associate_public_ip_address = "${var.associate_public_ip_address}"

  root_block_device {
    volume_type           = "${var.volume_type}"
    volume_size           = "${var.volume_size}"
    delete_on_termination = "${var.delete_on_termination}"
  }

  ##################################################################
  # Lifecyclye cannot be parameterized:
  #  - Cannot use interpolations -
  ##################################################################
  lifecycle {
    ignore_changes        = [ "user_data_base64" ]
    create_before_destroy = true
  }

  ebs_optimized           = "${var.ebs_optimized}"
}