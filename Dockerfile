FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*","tsconfig.json", "./"]
RUN npm install
COPY . .
EXPOSE 3000
RUN npx tsc
CMD ["node","build/index.js"]
