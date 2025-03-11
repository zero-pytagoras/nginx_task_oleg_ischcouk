#########################################
#Develop by: Oleg Ischouk
#Purpose:
#Date: 28/02/2025
#Version: 1.0.0
set -o errexit
#set -o pipefail
set -x
########################################


if ! command -v "nginx" ;then 
    echo "nginx is not installed... instaling"
    sudo apt update && sudo apt install -y nginx
else 
    echo "nginx is installed"
fi


if ! command -v "nginx" ;then 
    echo "nginx package instalation failed"
    exit 1
fi


VIRTUAL_HOSTS_COUNT=ls -1 /etc/nginx/sites-available/ | wc -l
echo **************
echo $VIRTUAL_HOSTS_COUNT
echo **************
if [ ! -f /etc/nginx/sites-available/default ]; then
    echo "nginx is not configured."

else
    echo "nginx is configured with default configuration."
fi


echo Please enter host name
read HOST_NAME
echo $HOST_NAME
CONTENT="server { \
 listen 80; \
 server_name $HOST_NAME;  \
 root /var/www/$HOST_NAME; \
 index index.html; \
}"

sudo sh -c "echo '$CONTENT' > /etc/nginx/sites-available/$HOST_NAME"
sudo rm -f /etc/nginx/sites-enabled/$HOST_NAME
sudo ln -s /etc/nginx/sites-available/$HOST_NAME /etc/nginx/sites-enabled/
sudo systemctl restart nginx

#sudo sh -c "echo 127.0.0.1 $HOST_NAME > ~/hosts"
curl -I http://$HOST_NAME


