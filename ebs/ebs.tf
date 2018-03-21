resource "aws_ebs_volume" "ebs" {
    availability_zone 	= "${var.availability_zone}"
    size 				= "${var.size}"
    type				= "${var.type}"

    encrypted			= "${var.encrypted}"

    #################################################################################################
    # Device name must start ar /dev/sdf {xvdf} (can see in console)
    #################################################################################################
    tags {
        Name 			= "${var.project}_${var.environment}_${var.instance_name}_${var.device_name}"
		Environment 	= "${var.environment}"
		Device 			= "${var.device_name}"
		Instance 		= "${var.instance_name}"
    }
}
