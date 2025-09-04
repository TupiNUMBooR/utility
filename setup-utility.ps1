chcp 65001 > $null
$OutputEncoding = [Console]::OutputEncoding = [Text.UTF8Encoding]::new()

# Получаем путь к папке tools в профиле пользователя
$tools = "$env:USERPROFILE\tools"

# Создаём папку, если её нет
New-Item -ItemType Directory -Force -Path $tools | Out-Null

# Копируем run.bat → utility.bat
Copy-Item -Path ".\run.bat" -Destination "$tools\utility.bat" -Force
Copy-Item -Path ".\run.sh" -Destination "$tools\utility" -Force
Copy-Item -Path ".\run-git-bash.sh" -Destination "$tools\utility-git-bash" -Force
Write-Host "Copied to $tools"

# Добавляем в PATH пользователя
[Environment]::SetEnvironmentVariable("Path", "$env:Path;$tools", "User")
Write-Host "Added to PATH: $tools"
