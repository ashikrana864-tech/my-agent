FROM node:20-slim
RUN npm install -g openclaw@latest
WORKDIR /app
EXPOSE 3000
CMD ["openclaw", "gateway", "--bind", "0.0.0.0", "--port", "3000"]
