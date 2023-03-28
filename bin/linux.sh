#/bin/bash #activates script

if [ uname==Linux ]; #checks if the OS is linux. if not, dumps error message to a file and exits, else it prints it is Linux.
then
	echo "ERROR" > linuxsetup.log
	exit
else
	echo "uname is Linux."
FILE=~/.vimrc #the following will check if the file is in my home directory and if it is, renames it and adds a message to linuxsetup.log
if [ -f "$FILE" ];
then
	cat ~/.vimrc ~/.bup_vimrc
	echo "current vimrc file was changed to .bup_vimrc" > linuxsetup.log
fi
cat ~/.dotfiles/etc/vimrc >> ~/.vimrc #redirects(overwrite) contents of another file into another
echo "source ~/.dotfiles/etc/bashrc_custom" > ~/.bashrc #appends a statement to another file
