# dotfiles

## System bootstrap


1. Install Xcode command line tools (required to install Homebrew)

2. Install Homebrew

   ~~~
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ~~~

3. Modify $PATH to use Homebrew path:

   ~~~ sh
   echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
   ~~~
   
1. Get this repo:

   ~~~
   mkdir ~/Documents/repos && cd $_
   git clone https://github.com/b225ccc/dotfiles.git
   cd dotfiles
   ~~~
 
4. Install Homebrew apps:
   
   ~~~ sh
   brew install \
   cmake \
   git \
   jq \
   mosh \
   python \
   vim \
   wget \
   zsh \
   zsh-completions
   ~~~

   ~~~ sh
   ln -s ~/Documents/repos/dotfiles/zshrc ~/.zshrc
   ln -s ~/Documents/repos/dotfiles/zfunc ~/.zfunc
   zsh
   rm -f ~/.zcompdump; compinit
   
   ln -s ~/Documents/repos/dotfiles/gitconfig ~/.gitconfig
   ln -s ~/Documents/repos/dotfiles/gitignore_global ~/.gitignore_global
   
   echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
   chsh -s /usr/local/bin/zsh
   
   ln -s ~/Documents/repos/dotfiles/vimrc ~/.vimrc
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   vim +PluginInstall +qall
   
   # complete YouCompleteMe installation
   cd ~/.vim/bundle/YouCompleteMe
   git submodule update --init --recursive
   ./install.py
   
   # git prompt.  ~/.zshrc references this
   cd ~/Documents/repos
   git clone https://github.com/olivierverdier/zsh-git-prompt.git
   ~~~

5. Install Cask apps:

   ~~~
   # i swear airmail was there at one point
   #brew cask install airmail && \
   # iterm2-beta is broken
   # iterm2-beta
   
   brew cask install \
   alfred \
   android-file-transfer \
   appcleaner \
   crashplan \
   dockertoolbox \
   doubletwist \
   dropbox \
   evernote \
   flux \
   gas-mask \
   google-chrome \
   istat-menus \
   java \
   itsycal \
   lastpass \
   limechat \
   macdown \
   slack \
   sourcetree \
   spectacle \
   spotify \
   spotify-notifications \
   sublime-text \
   subnetcalc \
   vlc \
   xld
   ~~~

6. Install other apps

   ~~~ sh
   sudo pip install --upgrade pip && \
   sudo pip install \
     python-glanceclient \
     python-novaclient \
     python-neutronclient \
     pylint
   ~~~

   ~~~ sh
   sudo gem install mdl
   ~~~
