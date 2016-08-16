from longkai/centos

workdir /root
run yum install -y tcpdump git zsh tmux vim file gcc clang lldb*
copy gitconfig .gitconfig

add install.zsh install.zsh

arg go=1.7
add https://storage.googleapis.com/golang/go${go}.linux-amd64.tar.gz .
run tar -C /usr/local -xzf go${go}.linux-amd64.tar.gz && rm -rf go${go}.linux-amd64.tar.gz

run zsh install.zsh && rm -rf install.zsh
run git clone --depth=1 https://github.com/longkai/vimrc.git
run ln -s vimrc/vimrc ~/.vimrc
run vim +PlugInstall +qall

entrypoint ["/bin/zsh"]
