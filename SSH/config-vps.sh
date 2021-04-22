# Update you
yum update

# Reboot the machine [Reconnection required, since the connection gets killed]
reboot

# Install dotnet sdk
sudo dnf install dotnet-sdk-5.0
# https://docs.microsoft.com/en-us/dotnet/core/install/linux

# Install nginx for reverse proxy
yum install epel-release
yum install nginx

# Navigate to the home folder to create user
cd /home
adduser $newusername

# install ftp
yum install pure-ftpd

# check systemctl status and start pure-ftpd
systemctl status
systemctl start pure-ftpd
systemctl enable pure-ftpd

# start nginx
systemctl start nginx
systemctl enable nginx

# check nginx status
service nginx status

# Go to nginx for server config
cd /etc/nginx/conf.d/
vi $appname.conf
# paste the configuration from the appname.conf in the vim editor
service nginx restart


