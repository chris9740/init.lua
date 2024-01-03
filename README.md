# Installation

1. Install packer
	```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
1. Restart vim
1. Run `:PackerSync`
1. Restart vim
1. Install language servers
   - rust-analyzer
   - `npm i -g vscode-langservers-extracted` (css, html)
   - `npm i -g typescript typescript-language-server` (ts, js)
   - `npm i -g bash-language-server`
1. Download and install [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf),
   and make sure your terminal is configured to use it.
