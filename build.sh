#!/usr/bin/env bash
set -euo pipefail

docker compose down --remove-orphans
docker compose build
mkdir -p data
cd data
../run.sh
