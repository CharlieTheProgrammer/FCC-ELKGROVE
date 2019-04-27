FROM node:latest

WORKDIR /user/src/server

COPY package.json .
RUN npm install

COPY . .

CMD ["/bin/bash"]