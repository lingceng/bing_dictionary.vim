" Borrow from AnsiEsc.vim
syntax match ansiStop conceal '\e\[3\dm'
syntax match ansiStop conceal '\e\[0m'
syn region ansiGreen  start="\e\[32m" end="\e\["me=e-2 contains=ansiStop
syn region ansiYellow start="\e\[33m" end="\e\["me=e-2 contains=ansiStop
syn region ansiBlue   start="\e\[34m" end="\e\["me=e-2 contains=ansiStop
highlight def link ansiStop   Ignore
highlight def link ansiGreen  Type
highlight def link ansiYellow Keyword
highlight def link ansiBlue   Comment
