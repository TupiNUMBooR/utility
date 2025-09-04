#!/usr/bin/env bash
set -euo pipefail

for i in {0..255}; do
  printf "\033[${i}m%3d\033[0m " "$i"
  if (( (i+1) % 10 == 0 )); then
    echo
  fi
done
