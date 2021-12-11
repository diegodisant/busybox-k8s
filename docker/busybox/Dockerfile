FROM alpine:latest AS deps

WORKDIR /busyboxk8s

COPY . .

RUN mkdir /root/.aws

COPY ./config/profile/.profile /root/.profile
COPY ./config/aws/config /root/.aws/config
COPY ./config/aws/credentials /root/.aws/credentials

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

RUN aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio4-live

CMD tail -f /dev/null
