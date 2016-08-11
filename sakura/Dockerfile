from longkai/centos

workdir /root
run yum install -y tcpdump git zsh tmux vim file gcc clang lldb*
copy gitconfig .gitconfig

add install.zsh install.zsh

add https://storage.googleapis.com/golang/go1.6.3.linux-amd64.tar.gz .
run tar -C /usr/local -xzf go1.6.3.linux-amd64.tar.gz && rm -rf go1.6.3.linux-amd64.tar.gz

run zsh install.zsh && rm -rf install.zsh
run git clone --depth=1 https://github.com/longkai/vimrc.git
run ln -s vimrc/vimrc ~/.vimrc
run vim +PlugInstall +qall

entrypoint ["/bin/zsh"]
