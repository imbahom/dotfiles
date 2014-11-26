#!/usr/bin/python
import os
import sys
import string

sessionName = "work"
cmd = "tmux attach -t " + sessionName
re = os.popen(cmd).read()
print(re)
if string.find(re,"no sessions") == -1:
    cmd = "tmux new-session -d -s " + sessionName + " && tmux send -t work 'cd ~/Documents/code/Project2/trunk/Developer/client/scripts && vim **/*.lua' ENTER && tmux attach -t " + sessionName
    os.system(cmd)
