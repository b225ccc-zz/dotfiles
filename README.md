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
   ~~~

4. Install Homebrew apps:

   * flux
   * google-chrome
   * 

   ~~~
   brew cask install google-chrome
   ~~~
