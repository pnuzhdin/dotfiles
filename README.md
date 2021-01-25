= Requirements

* Vim
* ZSH
* Git

== Windows

* MSys64
* Windows Terminal Preview

= Setup

1. Linux: `git clone --separate-git-dir=$HOME/.dotfiles https://github.com/pnuzhdin/dotfiles $HOME/dotfiles-tmp`
1. Windows: `git clone --separate-git-dir=$HOME/.dotfiles https://github.com/pnuzhdin/dotfiles $HOME/dotfiles-tmp`
1. `rm -r $HOME/dotfiles-tmp/`
1. `alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
1. `config config status.showUntrackedFiles no`

== Windows

1. Add `C:\msys64\mingw64\bin` and `C:\msys64\usr\bin` to the PATH variable
1. Set `MSYSTEM=MINGW32` in `mingw32.ini`
1. Set `MSYSTEM=MINGW64` in `mingw64.ini`
1. Set `MSYSTEM=MSYS` in `msys2.ini`

== Vim

1. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. `vim +PluginInstall +qall`

== ZSH

1. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc`
1. `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
1. Install fonts from https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k

= Optional: Init

1. `git init --bare $HOME/.dotfiles`
1. `alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
1. `config config status.showUntrackedFiles no`
