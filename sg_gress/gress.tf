resource "aws_security_group" "gress" {
  name              = "${var.sg_name}"
  description       = "${var.sg_name} security group"
  vpc_id		        = "${var.aws_vpc_id}"

  ingress {
    from_port       = "${var.ingress_from_port}"
    to_port         = "${var.ingress_to_port}"
    protocol        = "${var.ingress_protocol}"
    security_groups = [ "${var.ingress_security_groups}" ]
    self            = "${var.self}"
  }
  
  egress {
    from_port       = "${var.egress_from_port}"
    to_port         = "${var.egress_to_port}"
    protocol        = "${var.egress_protocol}"
    security_groups = [ "${var.egress_security_groups}" ]
    self            = "${var.self}"
  }

  tags              = "${var.tags}"
}