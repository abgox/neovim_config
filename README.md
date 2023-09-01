## Start

1. Start powershell and run the following command

2. `git clone --depth 1 'https://github.com/abgox/neovim_config.git' "$env:LOCALAPPDATA\Local\nvim"`

3. `git clone --depth 1 'https://github.com/wbthomason/packer.nvim' "$env:LOCALAPPDATA/nvim-data/site/pack/packer/start/packer.nvim"`

4. Download plugins by running `PackerSync` in `neovim`
   - Ignore error(nvim-treesitter), it needs to restart `neovim`
