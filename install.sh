#!/bin/bash

dir=$HOME/dotfiles
olddir=$HOME/dotfiles_old
# files that need dot
files_dot="vimrc vim zshrc zpreztorc tmux.conf tmux aliases taskrc gitconfig"
# files that do not need dot
files="bin"
# files included in ~/.config
files_config="redshift"

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
for file in $files_dot;
do
	echo -n "    - $HOME/.$file ==> $olddir ..."
	mv $HOME/.$file $olddir
	echo "done"
	echo -n "    + $HOME/.$file ~~> $file ..."
    ln -s $dir/$file $HOME/.$file
	echo "done"
done

for file in $files;
do
	echo -n "    - $HOME/$file ==> $olddir ..."
	mv $HOME/$file $olddir
	echo "done"
	echo -n "    + $HOME/$file ~~> $file ..."
    ln -s $dir/$file $HOME/$file
	echo "done"
done

for file in $files_config;
do
	echo -n "    - $HOME/.config/$file ==> $olddir ..."
	mv $HOME/.config/$file $olddir
	echo "done"
	echo -n "    + $HOME/.config/$file ~~> $file ..."
    ln -s $dir/$file $HOME/.config/$file
	echo "done"
done
