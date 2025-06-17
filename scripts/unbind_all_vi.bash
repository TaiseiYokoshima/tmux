#!/usr/bin/env bash

tmux list-keys -T copy-mode-vi | awk '{print $4}' | while read -r key; do
  tmux unbind-key -T copy-mode-vi "$key"
  echo "$key"
done



tmux list-keys -T copy-mode-vi | awk '{print $4}' | while read -r key; do
  tmux unbind-key -T copy-mode-vi "${key:1}"
  echo "${key:1}"
done
