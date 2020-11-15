# Getting Started

1. Clone
1. Install autojump
1. Install neovim
1. Install plug
1. Install zsh
1. symlink files
1. Install ripgrep

Clone:

```
git clone git@github.com:frank-west-iii/dotfiles.git
```

Install autojump

```
sudo apt-get install autojump
```

Install neovim:

```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
ln -s ~/dotfiles/vim .vim
ln -s ~/dotfiles/vim/vimrc .vimrc
```

Install plug:

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.config/nvim
ln -s ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
```



Install zsh:

```
sudo apt-get install zsh
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/dotfiles/zsh/zshrc .zshrc
```

symlink files:

```
ln -s ~/dotfiles/ruby/gemrc ~/.gemrc
ln -s ~/dotfiles/ruby/rspec ~/.rspec
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/git/gitignore ~/.gitignore
ln -s ~/dotfiles/git/gitmessage ~/.gitmessage
```

Install ripgrep:

```
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i ripgrep_11.0.2_amd64.deb
```
