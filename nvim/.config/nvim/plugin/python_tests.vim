lua << EOF
local config = {
	icons = {
		["class-name"] = ' ',      -- Classes and class-like objects
		["function-name"] = ' ',   -- Functions
		["method-name"] = ' ',     -- Methods (functions inside class-like objects)
		["container-name"] = '⛶ ',  -- Containers (example: lua tables)
		["tag-name"] = '炙'         -- Tags (example: html tags)
	},
	languages = {
	    ["python"] = {
		    separator = '.', -- Overrides default separator with '|'
		    icons = {
			    ["function-name"] = '',    -- to ensure empty values, set an empty string
	    		["tag-name"] = '',
	    		["class-name"] = '',
	    		["method-name"] = '',
			}
	    }
    },
	separator = ' > ',
}
require("nvim-gps").setup(config)
EOF

func! GetFuncName()
  let s:regex = '\C'.'^\s*'.'\(def\|class\|async def\)\>'.'\s\+'.'\(\w\+\)'
  normal V"xy
  let line = getreg("x")
  let m = matchlist(line, s:regex)
  let name = m[2]
  :echo name
  return name
endfunc

func! GetLocation()
   :echo luaeval('require("nvim-gps").is_available()')  
   let location = luaeval('require("nvim-gps").get_location()')
   return location
endfunc

func! GetRelativePath()
    let path = expand("%")
    if l:path[0] == '/'
        let l:path = path[1:] 
    endif
    if l:path[1] == '/'
        let l:path = path[2:]
    endif
    let l:path = path[:-3]
    let l:path = substitute(l:path, '/', '.', "g")
    :echo l:path
    return l:path
endfunc

func! OpenTerminal()
    :ter
    :call feedkeys("\<CR>")
    :call feedkeys("i")
    :call feedkeys("export DJANGO_SETTINGS_MODULE=$DJANGO_SETTINGS_MODULE_TEST")
    :call feedkeys("\<CR>")
endfunc


function! RunTest()
   let name = GetLocation() 
   let path = GetRelativePath()
   let command = './manage.py test ' . path . name
   let enter = "\<CR>"

   :echo command
   :call OpenTerminal()
   :call feedkeys(command)
   :call feedkeys(enter)
endfunction


func! RunFile()
    let path = expand('%')
    :call OpenTerminal()
    :call feedkeys('python3 '. path)
    :call feedkeys("\<CR>")
endfunc


" func! RunServer()
"     :call OpenTerminal()
"     :call execute('tmux new -w server')
"     :call feedkeys('python3 '. path)
"     :call feedkeys("\<CR>")
" endfunc


func! Migrate()
    :! pipenv run ./manage.py migrate
endfunc


func! Migrations()
    :! pipenv run ./manage.py makemigraions
    :call Migrate()
endfunc


autocmd FileType python noremap <leader>rf :call RunFile()<CR>
autocmd FileType python noremap <leader>rt :call RunTest()<CR>
autocmd FileType python noremap <leader>rm :call Migrate()<CR>
autocmd FileType python noremap <leader>rM :call Migrations()<CR>
