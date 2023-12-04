# Neovim setup:
- Install Neovim
- Install vim-plug: https://github.com/junegunn/vim-plug
- Move config files to their places. (`.nvimrc` into `~` and `.config/nvim/*` into `~/.config/nvim/*`)
- Run `:PlugInstall` to install coc and rust support.
- Install rust-analyzer, e.g. with `rustup component add rust-analyzer`.
- Install coc-rust-analyzer with `:CocInstall coc-rust-analyzer`
- Install coc-git with `:CocInstall coc-git`

# Controls

## Vim

Inspect setting: `:set some-setting?

Autowrap lines: `gq`, width can be changed with `:set tw=42`

Go to tab #2: `<leader>+2` or `2gt` (same for other numbers)

Next tab: `gt`

Previous tab: `gT`

Close & save if needed: `:x`

Clear search highlighting: `:noh`

Buffers: (https://linuxhandbook.com/vim-buffers/)
 List buffers: `:ls`
 Close current buffer: `:bd`
 Goto buffer: `:b <number or filename>`

Goto file under cursor: `gf`  (Return with `Ctrl+o`)

Change case: `gU<motion>` (to upper case) or `gu<motion>` (to lower case)

Folds:
   Create fold: `zf<movement>`
   Toggle fold: `za`
   Open fold: `zo`
   Close fold: `zc`

## Neovim + coc

(Config at ~/.nvim)

leader key: `Space`

trigger completion with characters ahead and navigate: `Tab`

navigate completions backwards: `shift+tab`

refresh completion: `Ctrl+space`

do first completion: `Enter`

navigate diagnostics: `leader+e` and `leader+E`

Scroll popups: `Ctrl+f` `Ctrl+b`

goto: (Return with `Ctrl+o`, forward with `Ctrl+i`)

definition: `gd`
type-definition: `gy`
implementation: `gi`
references: `gr`

show documentation: `K`

rename symbol: `leader+rn`

format selected: `leader+f`

code action:

	on selected region: `leader+a` (e.g. `leader+aap. for current paragraph)
	on current buffer: `leader+ac`

quickfix current line: `leader+qf`

run codelens on line: `leader+cl`

show diagnostics list: `space+d`

show outline: `space+o`

toggle inlay hints: `space+h`

git:

    `gc` show commit of current line

    `gs` show chunk diff of current line

Showing help:
`:h coc-lsp`

Coc extensions: `.config/coc/`

Update plugins with vim-plug: `:PlugUpdate`

Install plugin with vim-plug:

    Add inside call `plug#begin()` section (e.g. `Plug 'github/copilot.vim'`)

    Start Neovim and run `:PlugInstall`

Stop rust-analyzer from invalidating build cache. Add following to `~/.config/nvim/coc-settings.json`
```
{
        "rust-analyzer.server.extraEnv": {
                "CARGO_TARGET_DIR": "target_nvim-coc"
        }
}
```
