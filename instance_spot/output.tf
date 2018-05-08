output "instance_name" {
	value = "${var.instance_name}"
}

output "public_ip" {
  value = [
    "${aws_instance.instance.*.public_ip}"
  ]
}

output "private_ip" {
  value = [
    "${aws_instance.instance.*.private_ip}"
  ]
}

output "public_dns" {
  value = [
    "${aws_instance.instance.*.public_dns}"
  ]
}

output "private_dns" {
  value = [
    "${aws_instance.instance.*.private_dns}"
  ]
}

output "id" {
  value = [
    "${aws_instance.instance.*.id}"
  ]
}

output "availability_zone" {
  value = [ 
    "${aws_instance.instance.*.availability_zone}"
  ]
}