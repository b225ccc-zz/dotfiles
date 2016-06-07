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
 
4. Install Homebrew apps:
   
   ~~~ sh
   brew install git
   brew install 
   ~~~

5. Install Cask apps:

   * flux
   * google-chrome
   * 

   ~~~
   brew cask install airmail
   brew cask install alfred
   brew cask install android-file-transfer
   brew cask install appcleaner
   brew cask install doubletwist
   brew cask install dropbox
   brew cask install evernote
   brew cask install flux
   brew cask install google-chrome
   brew cask install iterm2
   brew cask install itsycal
   brew cask install lastpass
   brew cask install little-snitch
   brew cask install slack
   brew cask install sublime-text
   brew cask install totalfinder
   brew cask install vlc
   ~~~
