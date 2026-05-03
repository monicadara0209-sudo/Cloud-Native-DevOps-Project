FROM node:20.15.0-alpine3.20
ENV = DEV
ENV DB_HOST=mysql
RUN addgroup -S expense && adduser -S expense -G expense \
    && mkdir /opt/server \
    && chown expense:expense -R /opt/server
WORKDIR /opt/server
COPY package.json .
COPY *.js /opt/server/
RUN npm install
USER expense
CMD [ "node","index.js" ]
PWD
# release v3 update