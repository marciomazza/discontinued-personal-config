sudo apt-get install git
# sudo easy_install pip
sudo pip install ansible

cd ~
git clone https://github.com/marciomazza/mazza-personal-confs.git .z
cd .z

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass
source ~/.bashrc
exit 0
