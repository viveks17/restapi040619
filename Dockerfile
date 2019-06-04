FROM node:latest
RUN npm install -y express --save
RUN npm install -y body-parser --save
COPY data.json /node/data.json
COPY node.js /node/node.js
RUN chmod +x /node/node.js
EXPOSE 9000
CMD node /node/node.js
