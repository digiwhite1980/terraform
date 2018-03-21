##############################################################
# certificate body: Please keep line length to 65 chars.
# Intermediate certificates tend to be longer
# Update: Added certificate_chain. Problem solved
##############################################################
resource "aws_iam_server_certificate" "ssl" {
	name_prefix			   = "${var.name_prefix}"
	certificate_body	 = "${var.ssl_crt}"
	private_key			   = "${var.ssl_key}"
	certificate_chain	 = "${var.certificate_chain}"

  path               = "${var.path}" 
}