provider "aws" {
	region = "us-east-1"
}
resource "aws_instance" "myos" {
	ami = "ami-00068cd7555f543d5"
	instance_type = "t2.micro"
	vpc_security_group_ids = ["sg-027e64754d31b26e2"] // security_groups = ["name"] 
	root_block_device  {
	 volume_size = "25"
}
	tags = {
	 Name = "mudit"
}
	key_name = "acc2"
}
