resource "aws_elb_attachment" "elb_attachment" {
  elb           = "${var.elb}"
  instance      = "${var.instance}"
}