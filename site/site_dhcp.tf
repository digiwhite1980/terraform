resource "aws_vpc_dhcp_options" "dhcp_options" {
    domain_name 		= "${var.domain_name}"
    domain_name_servers = ["8.8.8.8", "8.8.4.4"]
    ntp_servers 		= ["91.189.89.198", "91.189.94.4"]

    tags {
        Name 			= "${var.project}"
        Environment 	= "${var.environment}"
    }
}
