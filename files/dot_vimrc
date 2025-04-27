" *********************************************************DATEOMATIC: Sun Apr 27 07:58:30 EDT 2025
" *********************************************************HASHOMATIC: e923eafc78f4abd36680c1d28e9061fd
" *****************************************************************************************************
                " W e l c o m e   t o   m y  V I M R C
                " *************************************************************************************
set nocompatible
set hidden                        " Will switch to next buffer without raising an error
set nowrap
set nohlsearch
set noerrorbells
set scrolloff=8
let loaded_matchparen = 1         
            " http://vimrc-dissection.blogspot.com/2006/09/vim-7-re-turn-off-parenparenthesiswhat.html
set splitbelow
set splitright
set cmdheight=2                   " Set the command window height to 2 lines, to avoid many cases
                                  " of having to  press <Enter> to continue
set ruler                         " Display crsr pos on last line of scr or in status line of a window
set number                        " Display line numbers on the left
set wildmenu                      " Better command-line completion
set showcmd                       " Show partial commands in the last line of the screen
set ignorecase                    " Use case insensitive search, except when using capital letters
set smartcase
set backspace=indent,eol,start    " Allow bckspcing over autoindent, line brks & start of insrt action
set nostartofline                 " Stop certain movements from always going to the 1st char of a line.
set laststatus=2                  " Always display the status line, even if only 1 window is displayed
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set colorcolumn=104
set background=dark
set laststatus=2                  " For Status Line
set t_Co=256                      " For Status Line

" set relativenumber
" set signcolumn=yes
" set incsearch
" set hlsearch incsearch          " Highlight searches (use <C-L> to temporarily turn off highlighting
                                  " see the mapping of <C-L> below)

" *****************************************************************************************************
                " Indent and Tab  Setup
                " *************************************************************************************
" There are in fact four main methods available for indentation, each one
" overrides the previous if it is enabled, or non-empty for 'indentexpr':
" 'autoindent'	uses the indent from the previous line.
"               When opening a new line and no filetype-specific indenting is enabled, keep same
"               indent as line currently on.
" 'smartindent'	is like 'autoindent' but also recognizes some C syntax to
" 		increase/reduce the indent where appropriate.
" 'cindent'	Works more cleverly than the other two and is configurable to
" 		different indenting styles.
" 'indentexpr'	The most flexible of all: Evaluates an expression to compute
" 		the indent of a line.  When non-empty this method overrides
" 		the other ones.  See |indent-expression|.
" set cindent                       
set tabstop=4 softtabstop=4
set shiftwidth=4     " Indent settings for using 4 spaces instead of tabs.
                     " Do not change 'tabstop' from its default value of 8 
set expandtab
set smartindent
" *****************************************************************************************************
                " Syntax Highlighting
                " *************************************************************************************
syntax off

set confirm                       " Instead of failing a command because of unsaved changes,
                                  " raise a dialogue asking to save changed files.
set visualbell                    " Use visual bell instead of beeping when doing something wrong
set t_vb=
                                  " reset terminal code for visual bell. 
                                  " If visualbell is set, and this line is also included vim will
                                  " neither flash nor beep. If visualbell is unset, this does nothing.
let mapleader = " "               " Leader - ( Spacebar )
let MRU_Auto_Close = 1            " Set MRU window to close after selection
set notimeout ttimeout ttimeoutlen=200  " Quickly time out on keycodes, but never time out on mappings

" *****************************************************************************************************
                " Commands
                " *************************************************************************************
command! -nargs=+ GREP call GrepBuffers(<q-args>)
command! SESSION      :call CaptureSession() 
command! MyLinter :caddexpr system("cat zzzz") | copen
command! ZZZZ :caddexpr system("cat zzzz") | copen
map <C-j> :cn<CR>
map <C-k> :cp<CR>
map <C-@> @a

"  :copen " Open the quickfix window
"  :ccl   " Close it
"  :cw    " Open it if there are "errors", close it otherwise (some people prefer this)
"  :cn    " Go to the next error in the window
"  :cp    " Go to the previous error in the window
"  :cnf   " Go to the first error in the next file
"  :.cc   " Go to error under cursor (if cursor is in quickfix window)
"
" *****************************************************************************************************
                " Pre Vundle Setup
                " *************************************************************************************
filetype off

" let NOVUNDLE = 1
" *****************************************************************************************************
                " Vundle            - see :h vundle for more details or wiki for FAQ
                " *******************************************************************
                " git clone  https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
                " git clone  https://github.com/archernar/home.git .
                " git clone  https://github.com/archernar/dotfiles.git    ~/tmp
                " git clone
                " OLD TO BE REMOVED git clone  https://github.com/archernar/Snips.git .
                " :PluginList       - lists configured plugins
                " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
                " :PluginUpdate     - <leader>p
                " :PluginSearch foo - searches for foo; append `!` to refresh local cache
                " :PluginClean      - confirms removal of unused plugins;
                "                     append `!` to auto-approve removal
                " *************************************************************************************
                
" *****************************************************************************************************
                " Vundle Begin
                " *************************************************************************************
if !exists("NOVUNDLE")
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " Plugin 'VundleVim/Vundle.vim'
    Plugin 'archernar/vim-flashcard'
    Plugin 'archernar/vim-dir'
    Plugin 'archernar/vim-progsnips'
    Plugin 'archernar/vim-map'
    Plugin 'archernar/vim-utils'
    Plugin 'archernar/vim-session'
    Plugin 'archernar/vim-program'
    Plugin 'archernar/vim-monochrome'
    Plugin 'archernar/vim-mru'
    Plugin 'vim-scripts/grep.vim'      " https://github.com/vim-scripts/grep.vim
    Plugin 'gruvbox-community/gruvbox'
    Bundle 'Lokaltog/vim-monotone.git'
    Bundle 'owickstrom/vim-colors-paramount'
    Plugin 'tpope/vim-surround'
    Plugin 'vim-airline/vim-airline'
    " Plugin 'tpope/vim-fugitive'
    " Plugin 'vim-airline/vim-airline-themes'
    " Plugin 'jeetsukumaran/vim-buffergator'
    " Plugin 'ctrlpvim/ctrlp.vim'
    "
    call vundle#end()
endif
" *****************************************************************************************************
                " Vundle End
                " *************************************************************************************
                                  
" *****************************************************************************************************
                " Post Vundle Setup
                " *************************************************************************************
filetype plugin indent on         " required, to ignore plugin indent changes, instead use: 
                                  " filetype plugin on
                                  " Put non-Plugin stuff after this line



" *****************************************************************************************************
                " Functions
                " *************************************************************************************
function g:LogMessage(...)
    let l:ret = 0

    let l:messages=[]
    call add(l:messages, a:1)
    call writefile(l:messages, "/tmp/vimscript.log", "a")
    return l:ret
endfunction

" *****************************************************************************************************
                " Remaps
                " *************************************************************************************
nnoremap         <F1>      :cclose<cr>:bnext<cr>
nnoremap <leader><F1>      :cclose<cr>
inoremap         <F5> <esc>:call ProgramCompile()<cr>
nnoremap         <F5>      :call ProgramCompile()<cr>
nnoremap <leader><F6>      :cclose<cr>
inoremap         <F6> <esc>:call ProgramRun()<cr>
nnoremap         <F6>      :call ProgramRun()<cr>
nnoremap <Leader>p         :PluginUpdate<cr>

" *****************************************************************************************************
                " Folding
                " *************************************************************************************

" set foldcolumn=3
" set foldmethod=marker
" set foldlevelstart=20
" set foldlevelstart=20
set foldlevel=1
set foldmethod=marker

" *****************************************************************************************************
                " Auto Commands
                " *************************************************************************************
    augroup AUTOGROUPONE
        autocmd!
        "au BufNewFile,BufRead *.ses let s=g:SessionMan()
    augroup END

" *****************************************************************************************************
                " Session Setup
                " *************************************************************************************
if ( 1 == 0 ) 
    if ( argc() == 0 ) 
         augroup VIMAUTOGROUPA
             autocmd!
             autocmd VimEnter * :call LoadSession()
         augroup END
    endif
    if ( argc() == 1 ) 
         let s:n=match(argv(0), "vimsession$")
         if (s:n>0)
             let $VIMFIRSTFILE=argv(0)
             let s:temp = argv(0)
             let s:temp = substitute(s:temp, ".vimsession$", "", "")
             let $VIMSESSION=s:temp
             let $VIMWINDOW="NIL"
             let $VIMSPLIT="NIL"
             if ( 1 == 1 ) 
             augroup VIMAUTOGROUPB
                 autocmd!
                 autocmd VimEnter * :call LoadSession()
                 "autocmd VimEnter * :echom "POPEYE"
             augroup END
             endif
         endif
    endif
endif

"   ***************************************************************************************************
                " Jump to Last Position When Reopening a File
                " *************************************************************************************
   if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g'\"" | endif
   endif
function! s:SLine(msg)
    let save_statusline = &statusline  " Save the current statusline
    let &statusline = a:msg
    "let &statusline = save_statusline
endfunction
"
" wget -O ~/.vim/vim.txt https://raw.githubusercontent.com/archernar/basics/refs/heads/master/vim.txt
" nnoremap         <F7> :call g:FlashCard($HOME . "/.vim/1.fc")<cr>
" nnoremap <leader><F7> :call g:UnFlashCard()<cr>
"   ***************************************************************************************************
                " Multi Toggle
                " *************************************************************************************
function! MultiToggle()
    let sMt=[]
    call add(sMt, [0, "Upper Mode",                  ":call ToUpperUnderCursor()<cr>"])
    call add(sMt, [1, "Lower Mode",                  ":call ToLowerUnderCursor()<cr>"])
    call add(sMt, [2, "ls",                          ":ls<cr>"])
    call add(sMt, [3 ,"Edit dots and configs",       ":call EditDotFiles()<cr>"])
    call add(sMt, [4, "Open Vim Sheatsheet",         ":e ~/.vim/vimbrief.txt<cr>"])
    call add(sMt, [5, "Reselect Visual Selection",   "gv"])
    call add(sMt, [6, "Search for Word Under Cursor",":%s/\<<C-r><C-w>\>//gI<Left><Left><Left>"])
    call add(sMt, [6, "6One", "Two"])
    call add(sMt, [7, "7One", "Two"])
    call add(sMt, [8, "8TestMeMe", "silent nnoremap  <F7> :call g:Test()" ])
    call add(sMt, [9, "9One", "Two"])
    let g:multi_toggle_state = g:multi_toggle_state  + 1
    if g:multi_toggle_state == 7
        let g:multi_toggle_state = 0
    endif
    execute "silent nnoremap <F7> " . sMt[g:multi_toggle_state][2]
    let &statusline = sMt[g:multi_toggle_state][1]
endfunction

function! g:Test()
    echom "TEST TEST TEST TEST"
endfunction

function! EditDotFiles()
        execute  "edit ~/.bashrc"
        execute  "edit ~/.vimrc"
        execute  "edit ~/.profile"
        execute  "edit ~/.vim/vimbrief.txt"
        execute  "edit ~/.vim/vim.txt"
endfunction
function! MultiToggleVoid()
        let g:multi_toggle_state = 0
endfunction

let g:multi_toggle_state = -1
let &statusline = "Void Mode"
nnoremap <F7> :call MultiToggleVoid()<CR>
nnoremap <F8> :call MultiToggle()<CR>
nnoremap <F9> :call GitPopUp()<CR>
nnoremap <F10> :call UtilityPopUp("/home/mestes/vim.txt")<CR>



function! ToLowerUnderCursor()
  " Get the current cursor position.
  let [row, col] = getpos('.')[1:2]

  " Get the character under the cursor.
  let char = getline(row)[col-1]

  " Check if a character exists at the cursor position (not end of line).
  if char != ""

    " Convert the character to lowercase.
    let lower_char = tolower(char)

    " Replace the character under the cursor with the lowercase version.
    call setline(row, strpart(getline(row), 0, col-1) . lower_char . strpart(getline(row), col))

    " Restore the cursor position (important!).
    call cursor(row, col)
  endif
endfunction
function! ToUpperUnderCursor()
  " Get the current cursor position.
  let [row, col] = getpos('.')[1:2]

  " Get the character under the cursor.
  let char = getline(row)[col-1]

  " Check if a character exists at the cursor position (not end of line).
  if char != ""

    " Convert the character to uppercase.
    let upper_char = toupper(char)

    " Replace the character under the cursor with the uppercase version.
    call setline(row, strpart(getline(row), 0, col-1) . upper_char . strpart(getline(row), col))

    " Restore the cursor position (important!).
    call cursor(row, col)
  endif
endfunction

" Map a key to call the function.  For example, map <Leader>u to it.
" You can choose any key combination you prefer.  <Leader> is often \.
" See :help leader for more about setting the leader key.
" Example:
"
" hello
"
"
" Option 1: Add the current file
nnoremap <leader>gaf :!git add %<CR>

" Option 2: Add the current file and stage changes
nnoremap <leader>gac :!git add % && git commit -m "Staged changes" <CR>

" Option 3: Add all changes in the current directory
nnoremap <leader>gaa :!git add .<CR>

" Option 4: Add all changes in the current directory and stage changes
nnoremap <leader>gss :!git add . && git commit -m "Staged all changes" <CR>

" Option 5: Add the current file and show git status
nnoremap <leader>gas :!git add %<CR>:!git status<CR>

" Option 6: Add all changes in the current directory and show git status
nnoremap <leader>gaas :!git add .<CR>:!git status<CR>

" Option 7: Add the current file and run a custom git command
"nnoremap <leader>gac :!git add % && git commit -m <C-r>=@%<CR><CR>

" Option 8: Add all changes in the current directory and run a custom git command
nnoremap <leader>gacc :!git add . && git commit -m <C-r>=getcwd()<CR><CR>


function! g:OpenReadOnlyFileExit()
    silent exe "bd!"
    echom ""
endfunction
function! g:BufferDelete(...)
        if (a:1 == 0)
            nnoremap <silent> <buffer> q     :call g:BufferDelete(1)<cr>
            nnoremap <silent> <buffer> <F1>  :call g:BufferDelete(1)<cr>
            nnoremap <silent> <buffer> <esc> :call g:BufferDelete(1)<cr>
        else
            silent exe "bd!"
        endif
    echom ""
endfunction
function! g:OpenReadOnlyFile(...)
        let l:filename = a:1
        exe "set nopaste"
        let l:f = l:filename
        if filereadable(l:f)
            " silent exe "tabnew " . l:f
            silent execute "edit " . l:f
            silent exe "set buftype=nowrite"
            nnoremap <silent> <buffer> q     :call g:OpenReadOnlyFileExit()<cr>
            nnoremap <silent> <buffer> <F1>  :call g:OpenReadOnlyFileExit()<cr>
            nnoremap <silent> <buffer> <esc> :call g:OpenReadOnlyFileExit()<cr>
            silent exe "normal gg0"
        endif
        exe "set paste"
endfunction

"https://www.baeldung.com/linux/vim-find-full-path-current-file#:~:text=The%20%25%20Register,%2C%20depending%20on%20the%20context).
"let l:command = "/usr/bin/git add " . expand('%') . ";git commit -m \"Update\"; git push origin master"
func! MenuCB(id, result)
    if ( a:result == 1 )
        let l:command = "git status > /tmp/out"
        call system(l:command)
        call UtilityPopUp("/tmp/out")
        "execute "new | r ! " . l:command
        "call g:BufferDelete(0)
    endif
    if ( a:result == 2 )
        let l:command = "/usr/bin/git add " . expand('%')
        execute "new | r ! " . l:command
        call g:BufferDelete(0)
    endif
    if ( a:result == 3 )
        let l:command = "git commit -m \"Update\""
        execute "new | r ! " . l:command
        call g:BufferDelete(0)
    endif
    if ( a:result == 4 )
        let l:command = "git push origin master"
        execute "new | r ! " . l:command
        call g:BufferDelete(0)
    endif
    if ( a:result == 5 )
        let l:command = "/usr/bin/git add " . expand('%') . ";git commit -m \"Update\"; git push origin master"
        execute "new | r ! " . l:command
        call g:BufferDelete(0)
    endif
    if ( a:result == 6 )
        let l:command = "./make"
        execute "new | r ! " . l:command
        call g:BufferDelete(0)
    endif
    if ( a:result == 7 )
        let l:command = "./deploy"
        execute "new | r ! " . l:command
        call g:BufferDelete(0)
    endif
    if ( a:result == 8 )
        call g:UtilityPopupCommand("df -h")
    endif
    if ( a:result == 9 )
        call g:UtilityBufferCommand("cat /usr/share/vim/vim82/doc/*.txt")
    endif
    if ( a:result == 10 )
        call g:UtilityBufferCommand("cat /usr/share/vim/vim82/doc/pop*.txt")
    endif

endfunc

func! DoNothingCB(id, result)
    let l:NOTHING=0
endfunc


" https://vi.stackexchange.com/questions/24462/what-are-the-new-popup-windows-in-vim-8-2
function! g:GitPopUp()
call popup_menu(['Status', 'add', 'commit', 'push', 'all', 'make', 'deploy','df','vim', 'pop' ], 
     \ #{ title: "Git", callback: 'MenuCB', line: 25, col: 40, 
     \ highlight: 'Question', border: [], close: 'click',  padding: [1,1,0,1]} )
endfunction




" *****************************************************************************************************
                " Utility Popup
                " *************************************************************************************
function! g:UtilityPopupCommand(...)
    call system( a:1 . " > /tmp/out" )
    call UtilityPopUp("/tmp/out")
endfunction
let g:utilityPopupFilename = ""
function! g:UtilityPopUp(...)
    if filereadable(a:1)
        let g:utilityPopupFilename = a:1 
        call popup_create(readfile(a:1), #{ line: 1, col: 1, border: [], padding: [1,1,1,1] } )
        let l:id = popup_list()[0]
        call popup_move(l:id, #{ line: 2, col: 4, 
                    \ minwidth: &columns -14,
                    \ maxheight: &lines -8, maxwidth: &columns -8,
                    \ })
        hi MyPopupColor ctermbg=black guibg=black
        call setwinvar(l:id, '&wincolor', 'MyPopupColor')
        nnoremap <DOWN> :call ScrollPopup(1)<CR>
        nnoremap <UP>   :call ScrollPopup(-1)<CR>
        nnoremap <F10>  :call UtilityPopUpClear(g:utilityPopupFilename)<CR>
    endif
endfunction
function! g:UtilityBufferCommand(...)
    call system( a:1 . " > /tmp/out" )
    call UtilityBuffer("/tmp/out")
endfunction
function! g:UtilityBuffer(...)
    if filereadable(a:1)
        execute "edit " . a:1
    endif
endfunction

function! g:UtilityPopUpClear(...)
    call popup_clear(1)
    nnoremap <DOWN> <down>
    nnoremap <UP>   <up>
    nnoremap <F10>  :call UtilityPopUp(g:utilityPopupFilename)<CR>
endfunction

function! ScrollPopup(nlines)
    let winids = popup_list()
    if len(winids) == 0
        return
    endif

    " Ignore hidden popups
    let prop = popup_getpos(winids[0])
    if prop.visible != 1
        return
    endif

    let firstline = prop.firstline + a:nlines
    let buf_lastline = str2nr(trim(win_execute(winids[0], "echo line('$')")))
    if firstline < 1
        let firstline = 1
    elseif prop.lastline + a:nlines > buf_lastline
        let firstline = buf_lastline + prop.firstline - prop.lastline
    endif

    call popup_setoptions(winids[0], {'firstline': firstline})
endfunction
function! GetUserInput(prompt)
  let user_input = input(a:prompt)
  return user_input
endfunction
" let user_string = GetUserInput("Enter your name: ")
"
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" Gemini AI Interface
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
"
function! InsertSystemOutput(command, query)
  " Run the system command and store the output in a variable.
  let output = system(a:command)

  " Get the current cursor position.
  let current_line = line('.')
  let current_col = col('.')

  " Insert the output into the buffer at the current cursor position.
  call append(current_line - 1, split(output, '\n'))

  let l:current_date = strftime("%Y-%m-%d")
  call writefile( ['', l:current_date] , "/tmp/gem.txt", "a") 
  call writefile( ['--------------------------------------'] , "/tmp/gem.txt", "a") 
  call writefile( ['New Gemini Query  --------------------'] , "/tmp/gem.txt", "a") 
  call writefile( ['--------------------------------------'] , "/tmp/gem.txt", "a") 
  call writefile( [ a:query, '' ]                            , "/tmp/gem.txt", "a") 
  let l:xx = split(output, '\n')
  call writefile( l:xx,                      "/tmp/gem.txt", "a")

  " Move the cursor to the end of the inserted text.
  let output_lines = len(split(output, '\n'))
  call cursor(current_line + output_lines, current_col)
endfunction

command! Gemini   :call Gemini() 
command! Gem      :call Gemini() 
command! GEM      :call Gemini() 
function! GetUserInput(prompt)
    " Displays a popup window and prompts the user to enter a string.
    " Compatible with Vim 8.2 (using inputdialog).
    " Args:    prompt (string): The prompt message to display in the popup.
    " Returns: string: The user's input, or an empty string if cancelled.
    let input = inputdialog(a:prompt, '')
    if input == ''
      return "" " User cancelled
    else
      return input
    endif
endfunction

function! Gemini()
    let l:dq="\""
    let l:szIn = GetUserInput("Gemini prompt: ")
    if l:szIn != ""
      let l:sz = "/home/mestes/scm/private/qg " . l:dq . l:szIn . l:dq . " | fold -sw 80"
      call InsertSystemOutput(l:sz, l:szIn)
    else
      echo "Input cancelled."
    endif
  return 0
endfunction

source ~/.macros.vim
