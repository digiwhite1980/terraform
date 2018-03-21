resource "aws_eip" "eip" {
  count = "${var.count}"	
}