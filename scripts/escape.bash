#!/usr/bin/env bash

pane_id="$TMUX_PANE"

# Check if there's an active selection
selection=$(tmux display -pt "$pane_id" "#{selection_present}")

if [[ "$selection" == "1" ]]; then
    tmux send -X clear-selection
else
    tmux send -X cancel
fi
