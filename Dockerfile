FROM node:22-slim
WORKDIR /app
COPY package*.json ./
RUN npm install --include=optional
COPY . .
RUN npm run build
EXPOSE 3000
ENV NODE_ENV=production
ENV MCP_PORT=3000
CMD ["node", "dist/index.js"]
