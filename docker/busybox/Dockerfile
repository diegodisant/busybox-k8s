FROM alpine:latest AS deps

WORKDIR /busyboxk8s

COPY . .

RUN apk add --update \
  --no-cache \
  curl python3 py3-pip && \
  pip3 install awscli && \
  rm -rf /var/cache/apk/*

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
  mv kubectl /usr/local/bin/kubectl && \
  chown root:root /usr/local/bin/kubectl && \
  chmod 755 /usr/local/bin/kubectl

FROM deps

CMD tail -f /dev/null
