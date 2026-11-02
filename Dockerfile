FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive \
    PUPPETEER_CACHE_DIR=/opt/puppeteer

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl ca-certificates \
    && curl -fsSL https://deb.nodesource.com/setup_24.x | bash - \
    && apt-get install -y --no-install-recommends \
        nodejs \
        unzip \
        procps \
        fonts-ipafont-gothic \
        fonts-wqy-zenhei \
        fonts-thai-tlwg \
        fonts-khmeros \
        fonts-kacst \
        fonts-freefont-ttf \
        dbus \
        dbus-x11 \
    && mkdir -p /tmp/pptr /opt/puppeteer \
    && npm install --prefix /tmp/pptr puppeteer@25.16.0 \
    && cd /tmp/pptr \
    && npx puppeteer browsers install chrome --install-deps \
    && rm -rf /tmp/pptr \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV PUPPETEER_SKIP_DOWNLOAD=true
