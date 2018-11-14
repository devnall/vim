# VIM Cheatsheet for my config

## Standard vim stuff that I always forget about

### Windows and Tabs

* `:drop` command will edit a new file, or jump to the window containing it if it already exists. Using `:tab` with it (e.g. `:tab drop {file}`) will open the file in a new tab if it isn't already open.
* `:tab split` command will copy the current window to a new tab of its own
* `:tab help` opens a help window in a new tab
* If you've already opened a file in a window and want it in its own tab, press `CTRL+W` then `T`
*

## Non-Standard keybinds

* `jj` - Escape sequence. On the (very rare) occassion that I need to type the string "jj", I wait 3 seconds between the first and second "j"
TODO: pasting something that contains "jj" (like a cert or gpg key or whatever) will escape insert mode unless you `set paste` first. It's then necessary to `set nopaste` to get my escape sequence back. Need to try to figure out a way around that, probably by auto-setting/unsetting paste mode?

* `SPACE` - Leader key

* `CTRL+s` - save file (`:w`)
* `CTRL+x` - close active window or tab

### Splits and Tabs:

* `CTRL+[hjkl]` - Navigate splits
* `CTRL+\\` - Create new vertical split

* `CTRL+t` - Create new, empty tab (works in insert mode, too!)
* `th` - Jump to first tab
* `tj` - Next tab
* `tk` - Previous tab
* `tl` - Jump to last tab
* `tt` - Create new tab (fills in `:tabedit ` and waits for input; give it the file to open or hit <ENTER> for empty tab
* `tm <#>` - Move current tab below tab #, 0 to move to far left
* `ALT+[F1-F0]` - Jump to the Nth tap


## Custom Commands:

* `DiffOrig` (especially right after `:tab sp`) - pops a new vertical split with a diff of the current buffer and its file on disk


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

### SimpylFold

No BS Python code-folding for vim

#### Keybinds and Commands

Use vim's built-in folding commands to expand and collapse folds.
The most basic commands are `zc` to close a fold and `zo` to open one.
You can also toggle (in most cases) with `za`

## Notes & Tips

### Tabs

* Tabs are great for working on small tasks outside of normal workflow without losing your place or getting confused by a ton of buffers. Open a new tab page for .vimrc changes or to hold external command output, chunks of text, etc so that you can quickly switch back to what you were working on before without messing up your window layout or context.
* Tabs ARE NOT like tabs in e.g. a browser. Forget the whole one file/location/"thing" per tab and instead use them as an extension of the more powerful vim buffer/window paradigm.
* Preface a `:help` command with `:tab` to keep help doc (or docs, with multiple tabs!) from stealing screen real estate.
* If you're working in a buffer where you have most folds open, try keeping a second tab page showing the buffer with all folds collapsed for an "at a glance" summary. Use the "at a glance" view to rapidly find and mark a place in the file (`ma` creates a mark that applies to the buffer), then jump to the mark (`'a`) in a different tab showing the same buffer.
* The inverse of the above would be to have a separate tab page for a detailed view of a buffer where you can enable useful but visually noisy options like `list`, `cursorcolumn`, `cursorline`, and `number`, and you may have several `:match` patterns active, etc. This allows you to keep your regular working view clean and uncluttered but quickly flip over to the information-overloaded version when needed. This works for the settings in `:help option-summary` that are labeled "local to window".
* If you remove `tabpages` from `sessionoptions`, then `:mksession` will only pay attention to the current tab page. This makes it easy to use tab pages as a lightweight project-organization tool –- just open a set of files in whatever window layout you like, then run `:mksession some-project.vim` to save the current tab page as a session. To work on that set of files again, open a new tab page and `:source` the appropriate session file.

### Executing Shell Commands

* To insert the output of a shell command below the cursor, use `:r !{cmd}`
*

## TODOs

* Look into `GFiles`, `GFiles?`, and `Commits` commands only seem to work for the directory you were in when you launched vim; see if there's a way to make it apply to the dir the active file lives in
* Looks like I only get 50 vim history entries from `History:`, see if I can increase that
* FZF.vim integrates with UltiSnips <https://github.com/SirVer/ultisnips> for snippets; give that a try
* Figure out how tabs work and if I want to use them
* Get syntastic and/or other auto linters setup
* Get some kind of completion setup (Youcompleteme?)
* Figure out tabs
* Fix colorscheme -- everything's too pink and purple

## Reference

* http://vim.wikia.com/wiki/Quick_tips_for_using_tab_pages
*
