resource "aws_key_pair" "key" {
  key_name   = "${var.ssh_name_key}"
  public_key = "${file(var.ssh_pub_key)}"
}
