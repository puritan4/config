config
======

Config files for linux

clone the repo and then create links to the specific files in your home.

    vimrc links to ~/.vim/vimrc
    dot-vimrc links to ~/.vimrc
    nvimrc links to ~/.vim/nvimrc
    dot-nvimrc links to ~/.nvimrc
    zshrc links to ~/.zshrc
    bashrc links to ~/.bashrc
    Xresources links to ~/.Xresources
    tmux.conf links to ~/.tmux.conf
    gitconfig links to ~/.gitconfig

so....

    ln -s /home/sleslie/dev/config/zshrc /home/sleslie/.zshrc
    ln -s /home/sleslie/dev/config/bashrc /home/sleslie/.bashrc
    ln -s /home/sleslie/dev/config/dot-nvimrc /home/sleslie/.nvimrc
    ln -s /home/sleslie/dev/config/nvimrc /home/sleslie/.vim/nvimrc
    ln -s /home/sleslie/dev/config/dot-vimrc /home/sleslie/.vimrc
    ln -s /home/sleslie/dev/config/vimrc /home/sleslie/.vim/vimrc
    ln -s /home/sleslie/dev/config/gitconfig /home/sleslie/.gitconfig
    ln -s /home/sleslie/dev/config/tmux.conf /home/sleslie/.tmux.config
    ln -s /home/sleslie/dev/config/Xresources /home/sleslie/.Xresources

    ln -s /home/sleslie/.vim /home/sleslie/.nvim
