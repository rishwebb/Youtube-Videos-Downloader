#!/bin/bash

clear

CYAN="\e[36m"
GRAY="\e[90m"
WHITE="\e[97m"
RESET="\e[0m"

center() {
  while IFS= read -r line; do
    printf "%*s\n" $(((${#line}+$(tput cols))/2)) "$line"
  done
}

figlet -f big "YTDL" | center
echo
echo -e "${GRAY}THE TERMINAL-FIRST YOUTUBE DOWNLOADER${RESET}" | center
echo -e "${GRAY}────────────────────────────────────────${RESET}" | center
echo

read -p "Paste YouTube link: " URL

if [ -z "$URL" ]; then
  echo "No URL provided. Exiting."
  exit 1
fi

echo
echo -e "${CYAN}Scanning available formats...${RESET}"
echo

yt-dlp -F "$URL"

echo
read -p "Enter the format code you want to download: " FORMAT

if [ -z "$FORMAT" ]; then
  echo "No format selected. Exiting."
  exit 1
fi

echo
echo -e "${CYAN}Starting download...${RESET}"
echo

yt-dlp -f "$FORMAT" "$URL"

echo
echo -e "${WHITE}Download finished.${RESET}"