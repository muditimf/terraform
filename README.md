# terraform
-----***----------**---Project_1---**-------------

Objectives : ---- 1) Deploy 5 EC2 instances  (Infrastructure As Code).
                  2) Create New key-pair to login ec2.
                  3) After deploying IAC , create static Ansible inventory
                  4) Group_1 = 3 ips ,  Group_2 = 2 ips
                  5) Configure apache server with code on Group_1 by ansible.
                  6) Configure database server on Group_2 by ansible.
           
           NOTE: --  All SHOULD DONE USING TERRAFORM AND ANSIBLE IN AUTOMATED WAY.
           
Workflow : ----   

******Deploy IAC by terraform file project_1.tf******
->provider = aws
->security group = predefinded on aws account having all necessary ports open.
->new key pair = ssh-keygen command , use *.pub key in tf file.
->output variables defined to filter ips after successful deployment.

*****Ansible yml files name = project_web.yml and project_db.yml********
host_key_checking is disabled 

*****Run "tr.sh" shell script file to automate whole task*********
