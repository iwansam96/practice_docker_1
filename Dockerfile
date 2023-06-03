FROM unit:1.30.0-node18
COPY ./app/*.js /foo/
RUN /bin/bash -c "cd /foo && chmod +x server.js; \
    chown -R unit:unit server.js; \
    npm link unit-http;"
EXPOSE 80