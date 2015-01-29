
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:$HOME/bin"


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export CC=/usr/bin/gcc

switch_trigger='LANmolpharm'

if [ "`networksetup -getcurrentlocation`" = "$switch_trigger" ]; then
  export http_proxy="http://proxy.kuins.net:8080"
  export https_proxy="http://proxy.kuins.net:8080"
  export ftp_proxy="ftp://ftp-proxy.kuins.net:8080"
  export socks_proxy="socks-proxy.kuins.kyoto-u.ac.jp:1080"
fi
