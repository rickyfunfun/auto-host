#!/bin/sh

http_code=`curl -o "/etc/hosts_tmp" -w %{http_code}"\n" "https://raw.githubusercontent.com/wangchunming/2017hosts/master/hosts-pc"`
if [ $http_code -eq 200 ]; then
  rm "/etc/hosts"
  mv "/etc/hosts_tmp" "/etc/hosts"
  echo "Hosts update completed!"
else
  echo "Request error!"
fi
