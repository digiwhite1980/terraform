# output "capabilities" {
# 	value = "${aws_cloudformation_stack.stack.capabilities}"
# }

# output "iam_role_arn" {
#   value = "${aws_cloudformation_stack.stack.iam_role_arn}"
# }

output "template_body" {
  value = "${aws_cloudformation_stack.stack.template_body}"
}

output "parameters" {
  value = "${aws_cloudformation_stack.stack.parameters}"
}