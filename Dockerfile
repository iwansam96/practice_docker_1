FROM node:current-alpine3.16
COPY ./app/*.js /foo/
EXPOSE 3000
ENTRYPOINT [ "node", "/foo/server.js" ]