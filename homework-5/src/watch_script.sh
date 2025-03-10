#!/bin/bash

WATCH_DIR=~/watch

inotifywait -m -e create --format '%f' "$WATCH_DIR" | while read NEW_FILE; do
    FULL_PATH="$WATCH_DIR/$NEW_FILE"
    if [ -f "$FULL_PATH" ]; then
        echo "New file detected: $NEW_FILE"
        cat "$FULL_PATH"
        mv "$FULL_PATH" "$FULL_PATH.back"
        echo "Renamed $NEW_FILE to $NEW_FILE.back"
    fi
done