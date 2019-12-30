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
	key_name = "${aws_key_pair.public.key_name}"
	tags = {
	 Name = "mudit"
}
}
resource "aws_key_pair" "public" {
	key_name = "public"
	public_key = "${file("awskey.pub")}"
}
