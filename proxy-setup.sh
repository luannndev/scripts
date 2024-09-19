#!/bin/bash

proxy=<your_proxy_here>
timeout=1

main() {
echo "Setup proxy with $timeout second(s) timeout"
if curl --max-time $timeout -s -o /dev/null $proxy; then
  setup_proxies
  echo "The proxies were automatically applied"
else
  echo "The proxies were not automatically applied due to timeout or other issues"
  read -p "Apply them anyway? (y/n): " setup_proxies_anyway

  if [ "$setup_proxies_anyway" = "y" ]; then
    setup_proxies
    echo "The proxies were applied manually"
  fi
fi
}

setup_proxies() {
  export ftp_proxy=$proxy
  export https_proxy=$proxy
  export http_proxy=$proxy
}

main
