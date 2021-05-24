bash max-teardown.sh
bash pexpress-setup.sh
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no bender@10.10.2.3 'uname -n ; sudo apt update -y'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no bender@10.10.2.3 'sudo apt install python3-pip -y'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no bender@10.10.2.3 'python3 -m pip install --upgrade pip'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no bender@10.10.2.3 'python3 -m pip install ansible --user'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no bender@10.10.2.3 'ansible --version'

sshpass -p "alta3" ssh -o StrictHostKeyChecking=no farnsworth@10.10.2.6 'uname -n ; sudo yum update -y'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no farnsworth@10.10.2.6 'sudo yum install python3-pip -y'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no farnsworth@10.10.2.6 'python3 -m pip install --upgrade pip'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no farnsworth@10.10.2.6 'python3 -m pip install ansible --user'
sshpass -p "alta3" ssh -o StrictHostKeyChecking=no farnsworth@10.10.2.6 'ansible --version'

sshpass -p "alta3" ssh-copy-id -o StrictHostKeyChecking=no bender@10.10.2.3
sshpass -p "alta3" ssh-copy-id -o StrictHostKeyChecking=no fry@10.10.2.4
sshpass -p "alta3" ssh-copy-id -o StrictHostKeyChecking=no zoidberg@10.10.2.5



#ssh-copy-id bender@10.10.2.3
#ssh-copy-id fry@10.10.2.4
#ssh-copy-id zoidberg@10.10.2.5

