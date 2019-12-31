#!/bin/bash


terraform apply -auto-approve
echo -e "[web]\n" >> /etc/ansible/hosts
terraform output -json ips | sed 's|[]["]||g' >> /etc/ansible/hosts
sed -i 's/,/\n/' /etc/ansible/hosts
sed -i 's/,/\n/' /etc/ansible/hosts
sed -i 's/,/\n/' /etc/ansible/hosts
sed -i '$s/^/[db]\n/' /etc/ansible/hosts
sed -i 's/,/\n/' /etc/ansible/hosts
sleep 100
ansible-playbook /etc/ansible/project_web.yml
ansible-playbook /etc/ansible/project_db.yml
