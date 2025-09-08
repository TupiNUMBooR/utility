FROM archlinux:base-devel

# 📦 Update
RUN pacman -Syu --noconfirm \
 && pacman -Scc --noconfirm

# 🐍 Python
RUN pacman -S --noconfirm \
    python python-pip \
 && pacman -Scc --noconfirm

# NodeJS
RUN pacman -S --noconfirm \
    nodejs npm \
 && pacman -Scc --noconfirm

# ☕ Java
# RUN pacman -S --noconfirm \
#     jdk-openjdk maven \
#  && pacman -Scc --noconfirm

# 🖼️ Multimedia
RUN pacman -S --noconfirm \
    exiv2 imagemagick libheif \
    ffmpeg opus-tools yt-dlp \
 && pacman -Scc --noconfirm

# 🌐 Utilities
RUN pacman -S --noconfirm \
    bash-completion man-pages mandoc \
    zip unzip p7zip cmus vim git \
    netcat tmux ncdu htop btop cloc \
    jq yq xmlstarlet \
 && pacman -Scc --noconfirm

# 🔮 gallery-dl
RUN pip install --no-cache-dir --break-system-packages gallery-dl

# 📂 Workdir
COPY content /
WORKDIR /home/data
