#!/bin/bash

# Function to play a YouTube video
play_youtube_video() {
    local url="$1"
    xdg-open "$url"
}

# Main script
if [ $# -eq 0 ]; then
    echo "Usage: $0 <youtube_url>"
    exit 1
fi

# here the url is hardcoded, but can simply have user of shell script pass it as user input with the following:
# ---> youtube_url="$1" 
youtube_url="https://www.youtube.com/watch?v=4c2KwsLeRkc"
play_youtube_video "$youtube_url"
