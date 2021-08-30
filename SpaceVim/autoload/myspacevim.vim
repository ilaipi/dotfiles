function! myspacevim#before() abort
  let g:mapleader = ','
  inoremap kj <Esc> 
endfunction

function! myspacevim#after() abort
  set mouse=r
  " 代码折叠
  set foldenable
  " 折叠方法
  " manual    手工折叠
  " indent    使用缩进表示折叠
  " expr      使用表达式定义折叠
  " syntax    使用语法定义折叠
  " diff      对没有更改的文本进行折叠
  " marker    使用标记进行折叠, 默认标记是 {{{ 和 }}
  set foldmethod=indent
  set foldlevel=99
  " 括号配对情况, 跳转并高亮一下匹配的括号
  set showmatch
  " How many tenths of a second to blink when matching brackets
  set matchtime=2
  
  " Go to home and end using capitalized directions
  noremap H ^
  noremap L $

  " Map ; to : and save a million keystrokes 用于快速进入命令行
  nnoremap ; :
endfunction
