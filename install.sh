#!/bin/bash

dir=$HOME/dotfiles
olddir=$HOME/dotfiles_old
files="vimrc vim zshrc zpreztorc"

# Backup the current dotfiles
echo -n "Creating $olddir for backup of any existing dotfiles in $HOME ..."
mkdir -p $olddir
echo "done"

# Change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# Move any existing dotfiles in $HOME to dotfiles_old directory.
# Then create symlinks from the $HOME to any files in $HOME/dotfiles directory
# specified in $files.
for file in $files;
do
	echo -n "    - Move $HOME/$file to $olddir ..."
	mv $HOME/.$file $olddir
	echo "done"
	echo -n "    + Creating symlink to $file in home directory ..."
	ln -s $dir/$file $HOME/.$file
	echo "done"
done
