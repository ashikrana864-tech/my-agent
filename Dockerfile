FROM ghcr.io/openclaw/openclaw:latest

USER root
RUN printf '#!/usr/bin/env sh\nexec node /app/dist/index.js "$@"\n' > /usr/local/bin/openclaw && chmod +x /usr/local/bin/openclaw

EXPOSE 3000

CMD ["node", "/app/dist/index.js", "gateway", "--bind", "0.0.0.0", "--port", "3000"]
