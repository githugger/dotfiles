Basic dotfiles for Neovim Tmux (and Zsh)
---

My personal dotfiles used with Neovim, Tmux (and Zsh) on Linux.

Forked and tweaked from https://github.com/drahosp/dotfiles. (Check his repo especially if you're on a Mac for homebrew and general OSX stuffs!)

Includes dotfiles for:
 * [Neovim](https://github.com/neovim/neovim)
 * tmux
 * zsh
 * git (rudimentary .git-config)
 * tern for javascript vim completion

Install on Mac and Linux
---

The install script removes any dotfiles and configuration for neovim, dotfiles for tmux, zsh, .gitconfig, and .tern-config that might be present at their respective standard locations. Should you want to use only a few select aspects of this collection you can symlink the respective files manually.


```bash
git clone https://github.com/drahosp/dotfiles ~/.dotfiles
cd ~/.dotfiles && ./install.sh
chsh /bin/zsh # if needed
```

After install Tmux plugins are installed using Ctrl-A I and Neovim plugins using :PlugInstall.

Used software
---

 - [NeoVim](http://neovim.io) next generation commandline text editor
 - ~~[zsh](http://www.zsh.org) is used as the default shell~~ (The zsh dotfile is available but the install script does not symlink to it by default.)
 - [tmux](http://tmux.github.io) provides session handling and window management
