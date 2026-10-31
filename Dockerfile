FROM ghcr.io/openclaw/openclaw:latest
ENV PORT=3000
ENV NODE_OPTIONS=--max-old-space-size=256
RUN rm -rf /app/dist/extensions /app/dist/plugins || true
EXPOSE 3000
CMD ["sh", "-c", "node /app/dist/index.js gateway --bind 0.0.0.0 --port ${PORT:-3000}"]
