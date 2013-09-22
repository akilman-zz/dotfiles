" This creates a keyword ERROR and puts it in the highlight group called logError
:syn keyword logError ERROR
:syn keyword logWarn WARN

" This creates a match on the date and puts in the highlight group called logDate.  The
" nextgroup and skipwhite makes vim look for logTime after the match
:syn match logDate /\d\{2} \w\{3} \d\{4}/ nextgroup=logTime skipwhite

" This creates a match on the time (but only if it follows the date)
:syn match logTime /\d\{2}:\d\{2}:\d\{2},\d\{3}/ nextgroup=logLevel skipwhite

" Classname
":syn match logLevel /\w+/

" Now make them appear:
" Link just links logError to the colouring for error

hi link logError Error
hi link logWarn Todo 

" Def means default colour - colourschemes can override

hi link logDate Comment
hi link logTime Conditional 
