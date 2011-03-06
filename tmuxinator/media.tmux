_TMUX=$TMUX
TMUX=
cd ~/data
tmux start-server

if ! $(tmux has-session -t media); then

tmux set-option base-index 1
tmux new-session -d -s media -n irc


  



tmux send-keys  -t media:1 'weechat-curses' C-m


tmux select-window -t media:1

fi

if [ -z $_TMUX ]; then
    tmux -u attach-session -t media
else
    tmux -u switch-client -t media
fi
