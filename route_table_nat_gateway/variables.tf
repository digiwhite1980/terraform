variable "vpc_id"		   {}
variable "cidr_block"		{}
variable "gateway_id"		{
  default = []
}

variable "count" {
  default = 1
}

variable "name"                 {
        default = "Route_table_nat"
}

variable "project"			{}
variable "environment"		{}