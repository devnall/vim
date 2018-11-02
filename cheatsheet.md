# VIM Cheatsheet for my config

## Non-Standard keybinds

* `jj` - Escape sequence. On the (very rare) occassion that I need to type the string "jj", I wait 3 seconds between the first and second "j"
TODO: pasting something that contains "jj" (like a cert or gpg key or whatever) will escape insert mode unless you `set paste` first. It's then necessary to `set nopaste` to get my escape sequence back. Need to try to figure out a way around that, probably by auto-setting/unsetting paste mode?
* `SPACE` - Leader key
* `CTRL+[hjkl]` - Navigate splits
* `CTRL+s` - save file (`:w`)

## Plugins:

### VimPlug

https://github.com/junegunn/vim-plug

My preferred Vim plugin manager.

Plugins are defined in ~/.vim/init.vim

#### Keybinds and Commands

* `:PlugInstall` - install all defined plugins that aren't currently installed
* `:PlugUpdate` - update installed plugins
* `:PlugClean` - remove and cleanup previously installed plugins that are no longer in the plugin list
* Other `:Plug*` commands - check tab completion/docs; probably won't come up often

### FZF.vim

https://www.github.com/junegunn/fzf.vim

Use the FZF (fuzzy finder) command line tool to search for and open files.

#### Keybinds and Commands

* `CTRL+P` (mapped to `:FZF!`) - general file searcher/opener. Opens selected file in current split.

* `Files [PATH]` - Search files (similar to `:FZF` but allows you to specify starting dir)
* `GFiles [OPTS]` - Search git files (`git ls-files`). Only seems to work for the dir you were in when you launched vim?
* `GFiles?` - Search git files (`git status`). Only seems to work for the dir you were in when you launched vim?
* `Buffers` - Search open buffers
* `Colors` - Search installed colorschemes
* `Rg [PATTERN]` - ripgrep search results (`ALT+A` to select all; `ALT+D` to deselect all
* `Windows` - Search windows
* `Marks` - Search marks
* `History` - Search for files used in the past as well as open buffers
* `History:` - Search vim command history
* `History/` - Search search history (i.e. things that I've / searched for)
* `Commands` - Search vim commands
* `Helptags` - Search help tags (help topics)
* `Filetypes` - Search for filetype and apply to currently open file

Once you've found the thing that you're searching for: 
* `ENTER` - open in the current pane
* `CTRL+T` - open in new tab
* `CTRL+V` - open in new vertical split
* `CTRL+X` - open in new horizontal split

Bang versions of the commands (e.g. `Rg!` or `Buffers!`) will open FZF in fullscreen

### FuGITive

https://www.github.com/tpope/vim-fugitive

A git wrapper for vim.

#### Keybinds and Commands

* `:Git [args]` - run an arbitrary git command
* `:Gstatus` - bring up the output of git-status in the preview window
    * `<C-N>` - next file
    * `<C-P>` - previous file
    * `-` - `git add` or `git reset` (staged files)
    * `ca` - `git commit --amend`
    * `cc` - `git commit`
    * `D` - `git diff`
    * `q` - close status
    * `r` - reload status
    * `U` - `git checkout`


## TODOs

* Look into `GFiles`, `GFiles?`, and `Commits` commands only seem to work for the directory you were in when you launched vim; see if there's a way to make it apply to the dir the active file lives in
* Looks like I only get 50 vim history entries from `History:`, see if I can increase that
* FZF.vim integrates with UltiSnips <https://github.com/SirVer/ultisnips> for snippets; give that a try
* Figure out how tabs work and if I want to use them
* Get syntastic and/or other auto linters setup
* Get some kind of completion setup (Youcompleteme?)
* Figure out tabs
