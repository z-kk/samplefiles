FROM paperist/texlive-ja:latest

WORKDIR /tmp
RUN apt-get update \
 && apt-get install -y make \
 && apt-get install -y ghostscript fonts-noto-cjk \
 && apt-get install -y git \
 && git clone https://github.com/h-kitagawa/plistings.git \
 && apt-get purge -y git && apt-get autopurge -y \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN cjk-gs-integrate --link-texmf --force
RUN kanji-config-updmap-sys noto

RUN mv plistings/plistings.sty /usr/local/texlive/20*/texmf-dist/tex/latex/listings/
RUN mktexlsr
