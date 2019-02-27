# Install latest stable NGINX from oficcial repo
str=$(lsb_release -a)
release=$(echo $str | grep -oP '(?<=Codename:).*')
sudo echo "deb http://nginx.org/packages/ubuntu/ $release nginx" >> /etc/apt/sources.list
sudo echo "deb-src http://nginx.org/packages/ubuntu/ $release nginx" >> /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
sudo apt-get update
sudo apt-get install nginx
rm ei-install
