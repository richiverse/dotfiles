#!/bin/sh

cd $HOME
sudo apt-get install -y git
git clone https://github.com/richiverse/dotfiles.git

echo 'install apps'
sudo apt-get update

echo 'installing tmux - better terminal control'
sudo apt-get install -y tmux 
sudo apt-get install xclip

echo 'installing zsh - a better command line'
sudo apt-get install -y zsh 

echo 'installing vim - best editor'
sudo apt-get install -y vim 

echo 'installing gnome-keyring'
sudo apt-get install -y libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring

echo 'start zsh -  when prompted enter 2'
zsh
echo 'clone zprezto'
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo 'setting up zprezto'
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo 'set zsh as your default shell'
chsh -s /bin/zsh

echo 'install vundle plus bundles'
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'install all plugins'
vim +PluginInstall +qall

echo 'compile YCM portion'
sudo apt-get install -y build-essential cmake
sudo apt-get install -y python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --omnisharp-completer

echo 'install anaconda'
cd ~/Downloads
wget http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-2.0.1-Linux-x86_64.sh
echo 'run installer with defaults'
bash ./Anaconda-2.0.1-Linux-x86_64.sh -b
echo 'cleanup'
rm ./Anaconda-2.0.1-Linux-x86_64.sh
echo 'add anaconda to path'
source ~/.zshrc
conda update conda
conda update anaconda


echo 'install powerline'
pip install --user git+https://github.com/Lokaltog/powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts 
mkdir -p ~/.fonts.conf.d
mv ./PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mv ./10-powerline-symbols.conf ~/.fonts.conf.d
sudo apt-get install -y python-fontforge
mkdir -p ~/github
cd ~/github
git clone https://github.com/Lokaltog/powerline-fonts


echo 'install source code pro'
cd ~/Downloads
wget http://sourceforge.net/projects/sourcecodepro.adobe/files/SourceCodePro_FontsOnly-1.017.zip
unzip SourceCodePro_FontsOnly-1.017.zip
cd ./SourceCodePro_FontsOnly-1.017/OTF
mv *.otf ~/.fonts
cd ../TTF
mv *.ttf ~/.fonts
sudo fc-cache
cd ~/Downloads
echo 'cleaning up fonts'
rm -rf SourceCodePro_*

echo 'install pip packages'
pip install -U -r requirements.txt

echo 'make symbolic links'
cd $HOME
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi
ln -sb ./dotfiles/.tmux.conf .
ln -sb ./dotfiles/.zshrc .
ln -sb ./dotfiles/.vimrc .
ln -sb ./dotfiles/.gitconfig .
