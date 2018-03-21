resource "aws_cloudformation_stack" "stack" {
  name          = "${var.name}"

  template_body = "${var.template_body}"
}