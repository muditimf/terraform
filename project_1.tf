provider "aws" {
	region = "us-east-1"
}
resource "aws_instance" "myos" {
	count = "5"
	ami = "ami-00068cd7555f543d5"
	instance_type = "t2.micro"
	vpc_security_group_ids = ["sg-027e64754d31b26e2"] // security_groups = ["name"] 
	root_block_device  {
	 volume_size = "25"
}
	user_data = <<EOF
		#!/bin/bash
		yum install python2 -y
		sudo echo redhat | passwd root --stdin
		sed -i '63 s/^#//g' /etc/ssh/sshd_config
		sed -i '63s/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
		sudo systemctl restart sshd
		EOF
	key_name = "${aws_key_pair.public.key_name}"
	tags = {
	 Name = "mudit"
}
}
resource "aws_key_pair" "public" {
	key_name = "public"
	public_key = "${file("awskey.pub")}"
}

output "ips" {
	value = ["${aws_instance.myos.*.public_ip}"]
}
