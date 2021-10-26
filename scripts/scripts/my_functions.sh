#!/bin/zsh                                                                                                   


function work() {
    SESSIONNAME="work"
    tmux has-session -t $SESSIONNAME &> /dev/null

    if [ $? != 0 ] 
    then
        tmux new-session -s $SESSIONNAME -n script -d
        tmux send-keys -t $SESSIONNAME "cd /mnt/c/dev/work" C-m 
        tmux send-keys -t $SESSIONNAME "clear" C-m 
    fi

    tmux attach -t $SESSIONNAME
}

function portal() {
    SESSIONNAME="portal"
    tmux has-session -t $SESSIONNAME &> /dev/null

    if [ $? != 0 ] 
    then
        tmux new-session -s $SESSIONNAME -n script -d
        tmux send-keys -t $SESSIONNAME "cd /mnt/c/dev/work/jackrabbit3" C-m 
        tmux send-keys -t $SESSIONNAME "clear" C-m 
    fi

    tmux attach -t $SESSIONNAME
}

function shipping() {
    SESSIONNAME="shipping"
    tmux has-session -t $SESSIONNAME &> /dev/null

    if [ $? != 0 ] 
    then
        tmux new-session -s $SESSIONNAME -n script -d
        tmux send-keys -t $SESSIONNAME "cd /mnt/c/dev/work/Shipping" C-m 
        tmux send-keys -t $SESSIONNAME "clear" C-m 
    fi

    tmux attach -t $SESSIONNAME
}
