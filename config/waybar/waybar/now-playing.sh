#!/usr/bin/env bash

zen_players=$(playerctl -l 2>/dev/null | grep '^firefox\.instance' | paste -sd, -)

if [[ -n "$zen_players" ]]; then
    playerctl --ignore-player="$zen_players" metadata \
        --format '{{artist}} — {{title}}' 2>/dev/null
else
    playerctl metadata --format '{{artist}} — {{title}}' 2>/dev/null
fi
