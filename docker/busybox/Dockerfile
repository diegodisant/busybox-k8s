FROM frapsoft/zsh:latest AS deps

WORKDIR /busyboxk8s

COPY . .

RUN apk add --update \
  --no-cache \
  --virtual busyboxk8s_deps \
  curl \
  python3 && \
  python3 -m pip && \
  pip3 install --no-cache-dir awscli && \
  rm -rf /var/cache/apk/*

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
  mv kubectl /usr/local/bin/kubectl && \
  chown root:root /usr/local/bin/kubectl && \
  chmod 755 /usr/local/bin/kubectl

FROM deps

CMD tail -f /dev/null
