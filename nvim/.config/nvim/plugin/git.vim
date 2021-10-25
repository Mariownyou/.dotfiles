func! GetBranchName()
    let command = 'git rev-parse --abbrev-ref HEAD'
    let name = execute(':!' . command)
    :echo name
endfunc


func! Commmit()

endfunc
