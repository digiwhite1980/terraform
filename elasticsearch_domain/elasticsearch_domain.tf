resource "aws_elasticsearch_domain" "es" {
	
  domain_name             = "${var.domain_name}"
  elasticsearch_version   = "${var.elasticsearch_version}"

  cluster_config          = [ "${var.cluster_config}" ]

  vpc_options             = [ "${var.vpc_options}" ]

  ebs_options             = [ "${var.ebs_options}" ]

  advanced_options        = "${var.advanced_options}"

  #snapshot_options        = [ "${var.snapshot_options}" ]

  tags                    = "${merge(var.tags, map("domain_name", format("%s", var.domain_name)))}"
}