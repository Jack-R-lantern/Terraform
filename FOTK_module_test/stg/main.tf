module "vpc" {
	source = "../module/vpc"
	
	vpc_cidr = "10.0.0.0/16"
	name = "fotk"
	profile = "test1"
}