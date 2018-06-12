variable "project"				{}
variable "environment"		{}
variable "name"						{}

variable "access_logs" {
	type		= "list"
	default = []
}

variable "listener" {
	type		= "list"
	default = []
}

variable "health_check" {
	type 		= "list"
	default = []
}

variable "tags" 									{
	default = {}
}



variable "ssl_arn"				{
	default = ""
}

variable "accesslog_interval" {
	default = "60"
}

variable "subnet_ids"		{
	type = "list"
}

variable "security_group_ids" {
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

variable "internal" {
	default = false
}



#variable "availability_zones"	{
#	type = "list"
#}
