FROM node:lts-buster
RUN git clone https://github.com/shanks-AI/shanks-AI.git /root/shanks-khan
WORKDIR /root/shanks-khan
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
