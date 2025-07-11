#!/usr/bin/env bash
set -euo pipefail

# Извлечь текущую версию из .env
version=$(grep '^VERSION=' .env | cut -d '=' -f2)

# Увеличить последнюю часть с помощью awk
new_version=$(echo "$version" | awk -F. -v OFS=. '{$NF++; print}')

# Перезаписать .env с новой версией, сохранив остальные переменные
awk -v new_version="$new_version" 'BEGIN{FS=OFS="="} 
  /^VERSION=/ {$2=new_version} 
  {print}' .env > .env.tmp && mv .env.tmp .env

# Показать новую версию
echo "$new_version"