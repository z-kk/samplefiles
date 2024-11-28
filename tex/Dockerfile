FROM paperist/texlive-ja:latest

RUN apt-get update
RUN apt-get install -y make

RUN apt-get install -y ghostscript fonts-noto-cjk
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN cjk-gs-integrate --link-texmf --force
RUN kanji-config-updmap-sys noto
