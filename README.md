# dotfiles
cd ~/Documents/repos
git clone https://github.com/b225ccc/dotfiles

## vim

* npm install -g jsonlint
*

for i in $(ls ~/Documents/repos/dotfiles/vim/snippets/javascript); do ln -s ~/Documents/repos/dotfiles/vim/snippets/javascript/$i ~/.vim/bundle/vim-snippets/snippets/javascript/$i; done

# http://evertpot.com/osx-tmux-vim-copy-paste-clipboard/
brew install reattach-to-user-namespace

https://github.com/olivierverdier/zsh-git-prompt


----

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
   git \
   mosh \
   zsh \
   zsh-completions
   ~~~

   ~~~ sh
   ln -s ~/Documents/repos/dotfiles/zshrc ~/.zshrc
   ln -s ~/Documents/repos/dotfiles/zfunc ~/.zfunc
   zsh
   rm -f ~/.zcompdump; compinit
   
   ln -s ~/Documents/repos/dotfiles/gitconfig ~/.gitconfig
   ln -s ~/Documents/repos/dotfiles/gitignore_global ~/.gitignore
   
   echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
   chsh -s /usr/local/bin/zsh
   
   ln -s ~/Documents/repos/dotfiles/vimrc ~/.vimrc
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   vim +PluginInstall +qall
   
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
   dockertoolbox \
   doubletwist \
   dropbox \
   evernote \
   flux \
   gas-mask \
   google-chrome \
   istat-menus \
   itsycal \
   lastpass \
   macdown \
   slack \
   spectacle \
   spotify \
   spotify-notifications \
   sublime-text \
   vlc
   ~~~
