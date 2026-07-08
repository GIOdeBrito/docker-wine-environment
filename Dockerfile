FROM debian:bookworm-slim

USER root

ENV DEBIAN_FRONTEND=noninteractive

ENV USER_NAME gameuser
ENV USER_PWD 123

# Create gameuser and add it to sudoers
RUN groupadd -g 1000 $USER_NAME && useradd -g 1000 -s /bin/bash -m $USER_NAME && echo "$USER_NAME:$USER_PWD" | chpasswd
RUN usermod -aG sudo $USER_NAME

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wget && \
    apt-get install -y gpg && \
    apt-get install -y sudo && \
    #apt-get install -y wine64 wine32 && \
    apt-get install -y fzf

USER $USER_NAME

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
