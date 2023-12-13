FROM node:18
WORKDIR /app
COPY package*.json ./
RUN yarn install --frozen-lockfile && yarn global add mocha
COPY . .
EXPOSE 3000
CMD ["yarn", "start"]
