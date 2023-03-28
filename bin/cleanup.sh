#/bin/bash #this starts the program

rm ~/.vimrc #this removes the file .vimrc from home directory
sed -i 's/source \~\/\.dotfiles\/bashrc\_custom//g' ~/bashrc_custom #removes a line from a file in my home directory and replaces it with nothing
rm -rf ~/.TRASH #removes the .trash file in home directory
