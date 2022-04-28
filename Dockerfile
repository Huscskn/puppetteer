FROM ubuntu:18.04

RUN apt-get -y update  \
    && apt-get -y install curl \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && echo "deb https://deb.nodesource.com/node_14.x focal main" \ 
    && echo "deb-src https://deb.nodesource.com/node_14.x focal main" \ 
    && apt -y install nodejs \
    && apt-get install -y wget gnupg ca-certificates procps libxss1 \
    && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
    && apt-get update \
    && apt-get install -y google-chrome-unstable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst \
        --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
