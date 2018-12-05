output "instance_name" {
	value = "${var.instance_name}"
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
