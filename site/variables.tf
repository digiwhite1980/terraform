variable "region"					{}
variable "project"				{}
variable "environment"		{}
variable "vpc_cidr"				{}
variable "domain_name"		{}

variable "ssh_pri_key"		{}
variable "ssh_pub_key"		{}

variable "enable_dns_support"	{
	default = true
}

variable "enable_dns_hostnames" {
	default = true
}

variable "chef_version" {
	default = "12.12"
}

variable "aws_region" {
	default	= [
			"eu-west-1",
			"eu-central-1" 
	]
}

variable "aws_azs" {
	type 	= "map"
	default	= {
			"eu-west-1" 	= "eu-west-1a,eu-west-2a,eu-west-3a"
			"eu-central-1" 	= "eu-central-1a,eu-central-1b"
	}
}

variable "aws_ami" {
	type 	= "map"
	default = {
		eu-west-1 	= "ami-f9dd458a"
		eu-central-1 	= "ami-f9dd458a"
	}
}
