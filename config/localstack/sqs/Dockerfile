FROM 139818044667.dkr.ecr.us-east-1.amazonaws.com/gupy/node:12.18.4-buster

WORKDIR /tmp

RUN git clone --verbose --depth=1 https://github.com/kobim/sqs-insight.git
RUN mv /tmp/sqs-insight /opt/
COPY opt/ /opt/

RUN \
  cd /opt/sqs-insight \
  && npm install

EXPOSE 3000

WORKDIR /opt/sqs-insight

ENTRYPOINT npm start
