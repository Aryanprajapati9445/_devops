# Stage 1
FROM node:18-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install --production

COPY . .

# Stage 2 (clean image)
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app .

EXPOSE 5000
CMD ["npm", "start"]