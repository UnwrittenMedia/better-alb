FROM golang:1.7.3-alpine

RUN apk update && \
  apk add \
      bash bash-doc bash-completion \
      grep \
      git \
      ca-certificates \
      openssl \
      nginx \
     make && \
  update-ca-certificates

#WORKDIR /go/src/github.com/codesuki/ecs-gen

COPY app /app
WORKDIR /app

# to statically link
ENV CGO_ENABLED 0
CMD go get -u github.com/Masterminds/glide && make build

# download release of ecs-gen
#ENV ECS_GEN_RELEASE 0.3.2
#RUN wget https://github.com/codesuki/ecs-gen/releases/download/$ECS_GEN_RELEASE/ecs-gen-linux-amd64.zip && unzip ecs-gen-linux-amd64.zip && cp ecs-gen-linux-amd64 /usr/local/bin/ecs-gen

COPY templates /templates

CMD ["ecs-gen"]
