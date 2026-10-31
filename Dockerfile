FROM ghcr.io/openclaw/openclaw:latest
EXPOSE 3000
CMD ["node", "/app/dist/index.js", "gateway", "--bind", "0.0.0.0", "--port", "3000"]
