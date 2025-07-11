#!/usr/bin/env bash
set -euo pipefail

winpty docker run --rm -it --network host -v "/$PWD:/home/data" tupinumboor/utility zsh
