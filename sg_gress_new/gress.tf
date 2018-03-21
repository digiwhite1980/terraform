resource "aws_security_group" "gress" {
  name              = "${var.sg_name}"
  description       = "${var.sg_name} security group"
  vpc_id		        = "${var.aws_vpc_id}"

  ingress           = [ "${var.ingress}" ] 
  egress            = [ "${var.egress}" ]

  tags              = "${var.tags}"
}