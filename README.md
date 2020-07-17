# ansible-lab
Ansible Lab Setup (Containers)
#git clone
yum install git -y
git clone https://github.com/sonulodha/ansible-lab.git
cd ansible-lab
docker build -t yourusername/ansible .
docker login 
docker push yourusername/ansible 
