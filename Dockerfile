FROM archlinux:base-devel

RUN pacman -Suy --noconfirm && \
    pacman -S --noconfirm \
      bash-completion mandoc man-pages \
      zip p7zip ncdu jq tmux htop btop \
      vim git cloc \
      python python-pip maven jdk-openjdk \
      exiv2 imagemagick ffmpeg yt-dlp && \
    pacman -Scc --noconfirm

RUN pip install --no-cache-dir --break-system-packages gallery-dl

COPY gallery-dl.conf.json /home/.config/gallery-dl/config.json
WORKDIR /home/data
