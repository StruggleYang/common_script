yum install -y yum-utils \
device-mapper-persistent-data \
lvm2

echo '>>>>>>>>>> install docker-ce start'
# docker-ce.repo
curl -s http://file.struy.top/docker/docker-ce.repo > /etc/yum.repos.d/docker-ce.repo
yum-config-manager --enable docker-ce-edge
yum install docker-ce -y
# start docker
systemctl enable docker
systemctl start docker
rm -rf /etc/yum.repos.d/docker-ce.repo
echo '>>>>>>>>>>> install docker-ce end'

echo '>>>>>>>>>>> install docker-compose start'
# install docker-compose
curl -L http://file.struy.top/compose/1.18.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo '>>>>>>>>>>> install docker-compose end'