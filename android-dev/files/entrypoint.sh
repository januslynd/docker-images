#!/usr/bin/env bash

# #########################
# ## Android Entrypoint ###
# #########################

tmux -2 new-session -d -s android
tmux rename-window -t android:0 'project'
tmux select-window -t android:0
tmux send-keys -t android:0 'cd /home/developer/ws' C-m

sleep 1

tmux new-window -t android
tmux rename-window -t android:1 'tools'
tmux select-window -t android:1
tmux send-keys -t android 'source /home/developer/.bin/android-env.sh' C-m

sleep 1

tmux new-window -t android
tmux rename-window -t android:2 'studio'
tmux select-window -t android:2
tmux send-keys -t android 'cd /home/developer/android-studio && ./bin/studio.sh' C-m

sleep 1

tmux select-window -t android:0
tmux -2 attach-session -t android
