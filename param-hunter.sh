#!/bin/bash

# رنگ‌ها برای نمایش زیباتر
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # بدون رنگ

# بنر زیبای ابزار
show_banner() {
  echo -e "${BLUE}"
  echo "╔══════════════════════════════════════════════╗"
  echo "║        🔍 Param-Hunter - v1.0               ║"
  echo "║        By Milad — Bash CLI Edition          ║"
  echo "╚══════════════════════════════════════════════╝"
  echo -e "${NC}"
}

# منوی راهنما
show_help() {
  show_banner
  echo -e "${YELLOW}Usage:${NC} $0 -u <url> [-o <output_file>] [-p <params_file>]"
  echo
  echo "Options:"
  echo "  -u  Target URL or domain (required)"
  echo "  -o  Output file name (optional, default: result.txt)"
  echo "  -p  Parameters wordlist file (optional, default: wordlists/params.txt)"
  echo "  -h  Show this help menu"
  echo
  echo "Example:"
  echo "  $0 -u https://example.com -o output.txt -p custom_params.txt"
}

# اجرای اصلی ابزار
main() {
  local url=""
  local output="result.txt"
  local params_file="wordlists/params.txt"

  while getopts ":u:o:p:h" opt; do
    case $opt in
      u) url="$OPTARG" ;;
      o) output="$OPTARG" ;;
      p) params_file="$OPTARG" ;;
      h) show_help; exit 0 ;;
      \?) echo -e "${RED}[-] Invalid option: -$OPTARG${NC}"; show_help; exit 1 ;;
      :) echo -e "${RED}[-] Option -$OPTARG requires an argument.${NC}"; exit 1 ;;
    esac
  done

  if [[ -z "$url" ]]; then
    echo -e "${RED}[-] Target URL is required.${NC}"
    show_help
    exit 1
  fi

  echo -e "${GREEN}[+] Scanning $url using $params_file ...${NC}"

  # بررسی فایل لیست پارامترها
  if [[ ! -f "$params_file" ]]; then
    echo -e "${RED}[-] Parameters file not found: $params_file${NC}"
    exit 1
  fi

  > "$output"
  while IFS= read -r param; do
    full_url="$url?$param=test"
    response=$(curl -s -o /dev/null -w "%{http_code}" "$full_url")
    if [[ "$response" == "200" ]]; then
      echo -e "${GREEN}[+] Valid param found: $param${NC}"
      echo "$param" >> "$output"
    else
      echo -e "${YELLOW}[-] Ignored: $param (${response})${NC}"
    fi
  done < "$params_file"

  echo -e "${BLUE}[+] Done. Results saved to: $output${NC}"
}

main "$@"
