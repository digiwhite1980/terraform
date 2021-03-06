variable "project"				{}
variable "environment"			{}
variable "elb_bucket"			{}

variable "instance_port"		{}
variable "instance_protocol"	{}
variable "lb_port"				{}
variable "lb_protocol"			{}
variable "health_target"		{}

variable "name"					{}

variable "ssl_arn"				{}

variable "lb_accesslog_interval" {
	default = "60"
}

variable "lb_subnet_ids"		{
	type = "list"
}

variable "lb_security_group_ids"{
	type = "list"
}

variable "lb_instances"			{
	type = "list"
}

variable "check_healthy_threshold" {
	default = "2"
}

variable "check_unhealthy_threshold" {
	default = "2"
}

variable "check_timeout" {
	default = "5"
}

variable "check_interval" {
	default = "15"
}

variable "lb_idle_timeout" {
	default = "5"
}

variable "lb_connection_draining" {
	default = true
}

variable "lb_connection_draining_timeout" {
	default = "60"
}

variable "lb_cross_zone_load_balancing" {
	default = true
}

variable "local_exec" {
	default = true
}
variable "internal"						{
	default = false
}
