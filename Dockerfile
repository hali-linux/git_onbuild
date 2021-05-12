FROM halilinux/web-base:v1.0
RUN apt update && apt install -y curl
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost/ || exit 1
