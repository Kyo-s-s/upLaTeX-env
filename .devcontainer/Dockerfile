FROM archlinux:base-devel

ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID docker \
    && useradd -m -u ${UID} -g ${GID} docker \
    && echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN pacman -Syyu --noconfirm \
    texlive-langjapanese \
    texlive-latexextra \
    texlive-binextra \
    texlive-luatex \
    texlive-fontsrecommended \
    noto-fonts-cjk \
    perl-yaml-tiny \
    perl-file-homedir \
    ghostscript \
    git \
    curl \
    unzip \
    nodejs \
    npm

RUN git clone https://github.com/h-kitagawa/plistings.git \
    && mv /plistings/plistings.sty /usr/share/texmf-dist/tex/latex/listings/ \
    && mktexlsr

RUN curl -OL http://tug.ctan.org/tex-archive/macros/latex/contrib/algorithms.zip \ 
    && unzip algorithms.zip \
    && cd algorithms \
    && latex algorithms.ins \
    && cd .. \
    && mv algorithms /usr/share/texmf-dist/tex/latex/ \
    && mktexlsr

RUN curl -OL http://tug.ctan.org/tex-archive/macros/latex/contrib/algorithmicx.zip \
    && unzip algorithmicx.zip \
    && mv algorithmicx /usr/share/texmf-dist/tex/latex/ \
    && mktexlsr

RUN curl -OL https://ftp.kddilabs.jp/CTAN/macros/latex/contrib/thmbox.zip \
    && unzip thmbox.zip \
    && cd thmbox \
    && latex thmbox.ins \
    && latex thmbox.dtx \
    && cd .. \
    && mv thmbox /usr/share/texmf-dist/tex/latex/ \
    && mktexlsr

RUN git clone https://github.com/abenori/jlreq.git \
    && cd jlreq \
    && make install \
    && mktexlsr
 

WORKDIR /home/docker