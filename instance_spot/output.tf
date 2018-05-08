output "instance_name" {
	value = "${var.instance_name}"
}

output "public_ip" {
  value = [
    "${aws_spot_instance_request.instance.*.public_ip}"
  ]
}

output "private_ip" {
  value = [
    "${aws_spot_instance_request.instance.*.private_ip}"
  ]
}

output "public_dns" {
  value = [
    "${aws_spot_instance_request.instance.*.public_dns}"
  ]
}

output "private_dns" {
  value = [
    "${aws_spot_instance_request.instance.*.private_dns}"
  ]
}

output "id" {
  value = [
    "${aws_spot_instance_request.instance.*.id}"
  ]
}

output "availability_zone" {
  value = [ 
    "${aws_spot_instance_request.instance.*.availability_zone}"
  ]
}