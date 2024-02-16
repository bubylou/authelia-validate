FROM authelia/authelia:latest

LABEL org.opencontainers.image.authors="Nicholas Malcolm"
LABEL org.opencontainers.image.source="https://github.com/bubylou/authelia-action"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
