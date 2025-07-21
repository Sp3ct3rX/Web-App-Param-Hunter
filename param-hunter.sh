#!/bin/bash

# رنگ‌ها
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RESET='\033[0m'

banner() {
    echo -e "${CYAN}"
    echo "   ____                           _   _             "
    echo "  |  _ \ __ _ _ __ ___  ___ _ __| | | | ___ _ __   "
    echo "  | |_) / _\` | '__/ __|/ _ \ '__| |_| |/ _ \ '_ \  "
    echo "  |  __/ (_| | |  \__ \  __/ |  |  _  |  __/ | | | "
    echo "  |_|   \__,_|_|  |___/\___|_|  |_| |_|\___|_| |_|"
    echo -e "${RESET}            ${YELLOW}CLI tool for parameter discovery${RESET}"
    echo
}

help_menu() {
    echo -e "${YELLOW}Usage:${RESET} $0 [-u URL] [-l list.txt] [-o output.txt]"
    echo -e "  -u URL        A single URL to scan"
    echo -e "  -l file.txt   File with list of URLs (one per line)"
    echo -e "  -o output.txt Save output to file"
    exit 1
}

# پارامترها
url=""
list=""
outfile=""

while getopts ":u:l:o:h" opt; do
    case $opt in
        u) url=$OPTARG ;;
        l) list=$OPTARG ;;
        o) outfile=$OPTARG ;;
        h) help_menu ;;
        *) help_menu ;;
    esac
done

# تابع استخراج پارامتر از یک URL
extract_params() {
    input_url=$1
    echo "$input_url" | grep -oP "(?<=\?|&)[^=]+(?==)" | sort -u
}

# شروع ابزار
banner

if [[ -n "$url" ]]; then
    echo -e "${GREEN}[+] Extracting parameters from:${RESET} $url"
    results=$(extract_params "$url")
elif [[ -n "$list" ]]; then
    echo -e "${GREEN}[+] Reading URLs from:${RESET} $list"
    results=$(cat "$list" | while read u; do extract_params "$u"; done | sort -u)
else
    help_menu
fi

# نمایش نتایج
if [[ -n "$results" ]]; then
    echo -e "\n${CYAN}Discovered parameters:${RESET}"
    echo "$results"
    
    if [[ -n "$outfile" ]]; then
        echo "$results" > "$outfile"
        echo -e "\n${YELLOW}[+] Saved to:${RESET} $outfile"
    fi
else
    echo -e "${RED}[-] No parameters found.${RESET}"
fi
