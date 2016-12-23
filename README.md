# dotfiles
My portable settings for zsh, vim and tmux.

## Features
### Tmux
  * `TPM` (Tmux Plugin Manager)
  * `Vim` + `Tmux` = <3

### Zsh
  * `Prezto` configuration manager

### Vim
#### Plugin manager
`Vim-plug`

#### Featured plugins
  * scrooloose/nerdtree
  * SirVer/ultisnips
  * tpope/vim-fugitive
  * airblade/vim-gitgutter
  * vim-airline/vim-airline

For a complete list of plugins refer [here](https://github.com/gon1332/dotfiles/blob/master/vim/config/init.vimrc).

## Installation
### 0. Tools:
These settings work well with these versions:
  * `Tmux` (2.1)
  * `Zsh` (5.1.1)
  * `Vim` (7.4)

### 1. Clone the current repo at `$HOME`:
~~~
$ git clone https://github.com/gon1332/dotfiles.git
~~~

### 2. Install `prezto`
Follow the installation guide from [here](https://github.com/sorin-ionescu/prezto).

### 3. Install `TPM (Tmux Plugin Manager)`
*Note:* `TPM` requires `Tmux` version 1.9 or higher to work.
~~~
# Clone tpm
$ git clone https://github.com/tmux-plugins/tpm ~/dotfiles/tmux/plugins/tpm

# Install plugins
$ tmux
prefix + alt + u
prefix + I
~~~

### 4. Install Vim plugins
~~~
$ vim
:PlugClean!
:PlugInstall
~~~
