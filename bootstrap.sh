sudo apt-get -y install software-properties-common
sudo apt-get -y update
sudo apt-get -y install xclip git ansible

ssh-keygen -t rsa -b 4096 -C "marciomazza@gmail.com"
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Contents of ~/.ssh/id_rsa.pub copied to clipboard.\n Create your new ssh key on github, bitbucket, etc, then CLOSE firefox!"
read -rsp $'Press any key to continue...\n' -n1 key
firefox https://github.com/settings/ssh  https://bitbucket.org/account/user/mazza/ssh-keys/  https://gitlab.com/profile/keys

cd ~
git clone git@github.com:marciomazza/mazza-personal-config.git .z
cd .z

./update.sh
exit 0
