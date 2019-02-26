sudo apt update
sudo apt -y install openjdk-8-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt -y install jenkins
systemctl status jenkins
sudo ufw allow 8080
sudo rm ei-install
echo 'Yor admin password is at /var/lib/jenkins/secrets/initialAdminPassword'
