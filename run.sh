#!/usr/bin/env bash
set -euo pipefail

docker run --rm -it --network host -v "/$PWD:/home/data" tupinumboor/utility bash
