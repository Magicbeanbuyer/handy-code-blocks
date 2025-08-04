/***************************
 * DETACHED FROM A SESSION *
 ***************************/
# create a new tmux session
tmux new
tmux new -s <session_name> 
tmux list-sessions # list all sessions
# reattach to a specific session
tmux attach -t <session_name/session_index> 
tmux a -t <session_name/session_index>

/*************************
 * ATTACHED TO A SESSION *
 *************************/
# prefix
c-b # press ctrl + b to enter tmux command mode
ctr + d # detach and kill the session

c-b d # detach from the session
c-b ? # help

# tmux command prompt
# https://github.com/tmux/tmux/wiki/Getting-Started#the-command-prompt
c-b : # enter command mode

select-layout -o # undo the last layout change