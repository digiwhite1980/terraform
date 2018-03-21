resource "aws_security_group" "egress" {
  name          = "${var.sg_name}"
  description   = "${var.sg_name} security group"
  vpc_id		    = "${var.aws_vpc_id}"
  count         = "${length(var.cidr_blocks)}"

  egress {
    from_port   = "${element(var.from_port, count.index)}"
    to_port     = "${element(var.to_port, count.index)}"
    protocol    = "${element(var.protocol, count.index)}"
    cidr_blocks = [ "${element(var.cidr_blocks, count.index)}" ]
    self        = "${var.self}"
  }

  tags          = "${var.tags}"
}