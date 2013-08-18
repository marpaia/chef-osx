function zsh_stats() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function uninstall_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
  mkdir -p $1
  cd $1
}

cdd(){ cd ~/Desktop/; }

cdg(){ cd ~/github/; }

cdgo(){ cd $GOPATH; }

gopath(){ cd $GOPATH; }

gop(){ cd $GOPATH; }

dope(){ echo "no doubt"; }

t(){ tail -f $1 | lolcat; }

ff(){ find ./ -name *$1* 2>/dev/null; }
