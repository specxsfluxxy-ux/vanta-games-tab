FROM node:22-slim
WORKDIR /app
COPY vanta-render-source.zip /tmp/vanta-render-source.zip
RUN apt-get update \
    && apt-get install -y --no-install-recommends unzip \
    && unzip -q /tmp/vanta-render-source.zip -d /app \
    && rm -f /tmp/vanta-render-source.zip \
    && rm -rf /var/lib/apt/lists/* \
    && npm ci --omit=dev
EXPOSE 8080
CMD ["node", "server.mjs"]
