FROM alpine:3.6

RUN apk --no-cache add nodejs-current nodejs-current-npm bash

COPY . ethmon

RUN cd ethmon && npm install

WORKDIR ethmon

VOLUME config.json

CMD ["npm", "start"]
