resource "aws_instance" "instance" {
	ami 							= "${var.aws_ami}"
	instance_type 				= "${var.aws_instance_type}"
	subnet_id 						= "${var.aws_subnet_id}"
	private_ip 						= "${var.private_ip}"

	tags              		= "${var.tags}"

	root_block_device {
		delete_on_termination		= "${var.root_block_device_delete}"
		volume_size					= "${var.root_block_device_size}"
		volume_type					= "${var.root_block_device_type}"
	}

	availability_zone 				= "${var.availability_zone}"

	connection {
		type 						= "ssh"
		############################################################################
		# Default user is different per AMI instance
		############################################################################
		user 						= "${var.ssh_user}"		
		private_key 				= "${file(var.ssh_pri_key)}"
		agent 						= "${var.connection_agent}"
		host 						= "${aws_instance.instance.public_ip}"
	}

	vpc_security_group_ids 			= [ "${var.security_groups_ids}" ]

	key_name 						= "${var.ssh_name_key}"

	associate_public_ip_address 	= "${var.associate_public_ip_address}"

	provisioner "chef"  {
		os_type 					= "linux"
		environment 				= "${var.environment}"
		run_list 					= ["${var.chef_runlist}"]
		node_name 					= "${var.instance_name}"
		server_url					= "https://api.chef.io/organizations/${var.chef_organization}"
		validation_client_name 		= "${var.chef_client_name}"
		validation_key 				= "${file("${var.chef_key}")}"
		version 					= "${var.chef_version}"
	}
}
