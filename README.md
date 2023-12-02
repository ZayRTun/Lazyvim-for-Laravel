# 💤 LazyVim Setup for Laravel/PHP Development

I recently dove into the world of Neovim, and the experience has been incredibly satisfying. A big shoutout to Emran Ramezan for the invaluable [Tree Sitter Blade](https://github.com/EmranMR/tree-sitter-blade), bringing life to Blade syntax. Also, kudos to [LazyVim]( https://www.lazyvim.org) for simplifying the Neovim setup.

After investing considerable time in tweaking and experimenting, I believe I've honed a Neovim setup that's making my Laravel/PHP development tasks a breeze. I wanted to share this setup with fellow Laravel developers, hoping it enhances your coding experience as much as it has for me.

# Installation

## Linux/Macos

- Make a backup of your current neovim files:
```shell
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```
- Clone this neovim config:
```shell
git clone https://github.com/ZayRTun/Lazyvim-for-Laravel.git ~/.config/nvim
```

- Remove the .git folder, so you can add it to your own repo later:
```shell
rm -rf ~/.config/nvim/.git
```

- Start Neovim:
```shell
nvim
```

