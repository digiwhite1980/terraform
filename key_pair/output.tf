output "ssh_name_key" {
	value = "${aws_key_pair.key.key_name}"
}

output "ssh_pub_file" {
	value = "${aws_key_pair.key.public_key}"
}
