resource "aws_vpc_peering_connection" "vpc_peering" {

	#peer_owner_id			= "${var.peer_owner_id}"
	peer_vpc_id				= "${var.peer_vpc_id}"
	
	vpc_id					= "${var.vpc_id}"
	auto_accept 			= "${var.auto_accept}"

	tags                 = "${merge(var.tags, map("Peer ID", "${var.peer_vpc_id}"))}"
}
