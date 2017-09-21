#!/bin/sh

http_code=`sudo curl -o "/etc/hosts_tmp" -w %{http_code}"\n" "https://raw.githubusercontent.com/rickyfunfun/auto-hosts/master/hosts"`
if [ $http_code -eq 200 ]; then
sudo rm "/etc/hosts"
sudo mv "/etc/hosts_tmp" "/etc/hosts"
echo "Hosts 重置完成"
else
echo "请求错误"
fi
