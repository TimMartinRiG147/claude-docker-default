FROM node:20-slim

RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    curl \
    iputils-ping \
    nano \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g @anthropic-ai/claude-code

WORKDIR .

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]