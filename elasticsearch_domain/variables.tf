variable "domain_name"    {}
variable "elasticsearch_version" {}

variable "cluster_config" {
	type 	= "map"
	default = {}
}

variable "vpc_options"    {
	type 	= "map"
	default	= {}
}

variable "ebs_options"    {
	type 	= "map"
	default	= {
		ebs_enabled			= false
	}
}

variable "advanced_options" {
	type 	= "map"
	default	= {
    "rest.action.multi.allow_explicit_index" = "true"
	}
}

variable "snapshot_options" {
	type 	= "map"
	default	= {}
}

variable "tags"           {
	default	= {}	
}