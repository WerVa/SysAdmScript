1. Setup ZSH

```sh
# install via apt-get
sudo apt-get install zsh

# install via hombrew
brew install zsh
```

2. Switch to zsh

```sh
zsh
```

3. Install Oh My ZSH

```sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

4. Install PowerLevel10k

```sh
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

5. Change theme to powerlevel10k

```sh
ZSH_THEME = "powerlevel10k/powerlevel10k"
```

6. Nice plugin for zsh it suggest commands as you type based on history and completions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

> Note: Best fonts for codding and terminal: [FiraCode](https://github.com/tonsky/FiraCode) or [Nerd Fonts](https://www.nerdfonts.com/)
