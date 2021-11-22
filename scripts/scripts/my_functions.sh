#!/bin/zsh                                                                                                   
git config --global core.excludesFile '~/.gitignore'


function work() {
    SESSIONNAME="work"
    cd /mnt/c/dev/work
    tmux has-session -t $SESSIONNAME &> /dev/null

    if [ $? != 0 ] 
    then
        tmux new-session -s $SESSIONNAME -n script -d
        tmux send-keys -t $SESSIONNAME "clear" C-m 
    fi

    tmux attach -t $SESSIONNAME
}

function portal() {
    SESSIONNAME="portal"
    cd /mnt/c/dev/work/jackrabbit3
    tmux has-session -t $SESSIONNAME &> /dev/null

    if [ $? != 0 ] 
    then
        tmux new-session -s $SESSIONNAME -n script -d
        tmux send-keys -t $SESSIONNAME "clear" C-m 
    fi

    tmux attach -t $SESSIONNAME
}

function shipping() {
    SESSIONNAME="shipping"
    cd /mnt/c/dev/work/Shipping
    tmux has-session -t $SESSIONNAME &> /dev/null

    if [ $? != 0 ] 
    then
        tmux new-session -s $SESSIONNAME -n script -d
        tmux send-keys -t $SESSIONNAME "clear" C-m 
    fi

    tmux attach -t $SESSIONNAME
}


function blocker() {
    echo 'blocker activated'
    PATHTOFILE='/mnt/c/dev/side_projects/blocker/'
    echo 1 | sudo -S python3 "${PATHTOFILE}app.py" > "${PATHTOFILE}results.txt" 2> "${PATHTOFILE}errors.log"   &
}


function vinit() {
    SESSIONNAME="vinit"
    cd ~/.dotfiles/nvim/.config/nvim
    tmux has-session -t $SESSIONNAME &> /dev/null

    if [ $? != 0 ] 
    then
        tmux new-session -s $SESSIONNAME -n script -d
        tmux send-keys -t $SESSIONNAME "clear" C-m 
    fi

    tmux attach -t $SESSIONNAME
}
