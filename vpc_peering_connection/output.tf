output "id" {
        value = "${aws_vpc_peering_connection.vpc_peering.id}"
}

output "accept_status" {
        value = "${aws_vpc_peering_connection.vpc_peering.accept_status}"
}
