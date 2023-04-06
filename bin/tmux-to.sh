#!/usr/bin/env bash

ssh -t $1 -- /bin/sh -c 'tmux has-session && exec tmux attach || exec tmux'
