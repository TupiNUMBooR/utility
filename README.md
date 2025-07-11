Utility archlinux container

Includes:

- ffmpeg
- imagemagick
- git
- openjdk
- python
- gallery-dl
- yt-dlp

# Outside

```sh
./increment-version.sh
docker build .
./run.sh
```

# Inside

```sh
yt-dlp -S res:1080 [link]
```

# Links

[gallery-dl/docs/gallery-dl-example.conf at master · mikf/gallery-dl](https://github.com/mikf/gallery-dl/blob/master/docs/gallery-dl-example.conf)

# TODO:

- [ ] add zsh
