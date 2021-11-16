FROM frapsoft/zsh:latest AS DEPENDENCIES

WORKDIR /busyboxk8s

COPY . .

RUN apk update && \
  apk add --no-cache \
  curl \
  python3 \
  py3-pip && \
  pip3 install --upgrade pip && \
  pip3 install --no-cache-dir awscli awscli && \
  rm -rf /var/cache/apk/*

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
  cp kubectl /usr/bin

FROM DEPENDENCIES

CMD tail -f /dev/null
