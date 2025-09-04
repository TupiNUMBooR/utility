FROM archlinux:base-devel

# 📦 Обновление системы
RUN pacman -Syu --noconfirm \
 && pacman -Scc --noconfirm

# 🌐 Утилиты
RUN pacman -S --noconfirm \
    bash-completion man-pages mandoc \
    zip p7zip ncdu jq \
    tmux htop btop \
 && pacman -Scc --noconfirm

# 💻 Редакторы и анализ кода
RUN pacman -S --noconfirm \
    vim git cloc \
 && pacman -Scc --noconfirm

# 🐍 Python
RUN pacman -S --noconfirm \
    python python-pip \
 && pacman -Scc --noconfirm

# 🖼️ Мультимедиа и парсеры
RUN pacman -S --noconfirm \
    exiv2 imagemagick ffmpeg yt-dlp \
 && pacman -Scc --noconfirm

# ☕ Java
# RUN pacman -S --noconfirm \
#     maven jdk-openjdk \
#  && pacman -Scc --noconfirm

# NodeJS
RUN pacman -S --noconfirm \
    nodejs npm \
 && pacman -Scc --noconfirm

# 🔮 Установка gallery-dl
RUN pip install --no-cache-dir --break-system-packages gallery-dl
COPY gallery-dl.conf.json /etc/gallery-dl.conf

# 🌀 Zsh
RUN pacman -S --noconfirm \
    zsh zsh-completions zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions \
 && pacman -Scc --noconfirm
COPY zshrc /root/.zshrc
SHELL ["/bin/zsh", "-c"]
CMD ["zsh"]

# 📂 Рабочая директория
COPY .editorconfig /home/.editorconfig
WORKDIR /home/data
