syntax on                     " Enable syntax highlighting

filetype plugin indent on     " Enable file type detection, load filetype-specific plugins,
                              " and enable filetype-specific indenting

set tabstop=4                 " Sets the number of spaces that a tab character represents
set expandtab                 " Converts tabs to spaces
set autoindent                " Enables automatic indentation
set smartindent               " Enables smart indentation based on file type
set shiftwidth=4              " Sets the number of spaces for each indentation level

set number                    " Displays line numbers
set numberwidth=2             " Sets the width of the line number column
set relativenumber            " Displays relative line numbers

set cursorline                " Highlights the current line
set cursorcolumn              " Highlights the current column

set hlsearch                  " Highlights all search matches
set showmatch                 " Highlights matching parentheses and brackets
set incsearch                 " Shows search matches as you type
set smartcase                 " Enables case-sensitive search if uppercase letters are used
set ignorecase                " Ignores case in searches

set encoding=utf-8            " Sets the encoding to UTF-8
set fileformat=unix           " Sets file format to Unix

set ruler                     " Displays the cursor position

set showcmd                   " Displays incomplete commands
set showmode                  " Displays the current mode (e.g., INSERT, NORMAL)

set wildmenu                  " Enables a visual menu for command-line completion
set wildmode=list:longest     " Sets wildmenu to display a list and complete to the longest common string

colorscheme desert            " Sets the color scheme to 'desert'
set background=dark           " Sets the background to dark

" Netrw settings (file explorer within Vim)
let g:netrw_keepdir =  0      " Keeps the current directory when opening files with netrw
let g:netrw_winsize = 20      " Sets the netrw window size to 20%
let g:netrw_banner  =  0      " Disables the netrw banner
hi! link netrwMarkFile Search " Highlights marked files in netrw

" Key mappings for auto-pairing brackets and quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap < <><left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" vim-airline plugin settings (status line enhancement)
if exists(':AirlineTheme')
  let g:airline_theme = 'dark' " Sets the airline theme to dark
  let g:airline_powerline_fonts = 1 " Enables powerline fonts for airline
endif

" vim-gitgutter plugin settings (shows git diff in the gutter)
if exists(':GitGutterEnable')
  let g:gitgutter_enabled = 1     " Enables gitgutter
endif

" vim-fugitive plugin settings (Git integration)
if exists(':Gstatus')
  nnoremap <leader>gs :Gstatus<CR> " Maps <leader>gs to show Git status
  nnoremap <leader>gc :Gcommit<CR> " Maps <leader>gc to commit changes
  nnoremap <leader>gp :Gpush<CR>   " Maps <leader>gp to push changes
  nnoremap <leader>gl :Gpull<CR>   " Maps <leader>gl to pull changes
endif

" vim-ale plugin settings (Asynchronous Lint Engine)
if exists(':ALEEnable')
  let g:ale_linters_explicit = 1  " Only run linters explicitly defined
  let g:ale_lint_on_save = 1      " Run linters on file save
  let g:ale_fix_on_save = 1       " Automatically fix errors on file save
endif
