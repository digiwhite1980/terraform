resource "aws_security_group" "egress" {
  name          = "${var.sg_name}"
  description   = "${var.sg_name} security group"
  vpc_id		    = "${var.aws_vpc_id}"

  egress        = "${var.egress}"
  
  tags          = "${var.tags}"
}