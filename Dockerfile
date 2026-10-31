FROM node:20-slim
WORKDIR /app
RUN npm install -g openclaw@latest
ENV PORT=3000
ENV NODE_OPTIONS=--max-old-space-size=256
ENV OPENCLAW_GATEWAY_TOKEN=ashik123456
ENV OPENCLAW_GATEWAY_PASSWORD=ashik123456
EXPOSE 3000
CMD ["sh", "-c", "openclaw gateway --bind 0.0.0.0 --port ${PORT:-3000}"]
