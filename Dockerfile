FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine64 wine32 && \
    apt-get install -y fzf

ENTRYPOINT [ "bash", "/entrypoint.sh" ]
