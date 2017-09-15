#!/bin/sh

http_code=`sudo curl -o "/etc/hosts_tmp" -w %{http_code}"\n" "https://raw.githubusercontent.com/wangchunming/2017hosts/master/hosts-pc"`
if [ $http_code -eq 200 ]; then
  sudo rm "/etc/hosts"
  sudo mv "/etc/hosts_tmp" "/etc/hosts"
  echo "Hosts 更新完成"
else
  echo "请求错误"
fi
