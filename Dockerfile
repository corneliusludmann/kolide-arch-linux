FROM archlinux

RUN useradd -m -s /bin/bash arch && \
    pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
        base-devel \
        sudo \
    && \
    echo 'ALL ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/free-for-all

COPY run.sh /run.sh

USER arch
WORKDIR /home/arch/
COPY PKGBUILD /home/arch/
ENTRYPOINT /run.sh
